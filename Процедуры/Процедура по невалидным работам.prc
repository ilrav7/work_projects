CREATE OR REPLACE PROCEDURE Z_MAIN_PP_UNVALID_WORKS_UNGROUP IS
TYPE t_row_pers_work IS RECORD
    (
        operating_day       DATE,
        id_dept_pers        NUMBER,
        id_dept             NUMBER,
        id_dept_birzha      NUMBER,
        id_work             NUMBER,
        fact                NUMBER,
        fact2               NUMBER,
        fact3               NUMBER,
        user_demande        NUMBER,
        start_work          DATE,
        end_work            DATE,
        num_mission         VARCHAR2 (50),
        tab_num             VARCHAR2 (40),
        id_str_birzha       NUMBER,
        num_work_unstop     NUMBER,
        marc_birzha         NUMBER,
        marc_unstop         NUMBER,
        marc_time           NUMBER,
        id_shift_check_in   NUMBER,
        id_brigade          NUMBER,
        date_brigade        DATE,
        role                NUMBER,
        etat                NUMBER

    );

    TYPE t_tab_pers_work IS TABLE OF t_row_pers_work;

    tab_pers_work  t_tab_pers_work;

BEGIN

/*
    WITH users AS (
          SELECT a.id_user_lm,
                 a.tab_num,
                 a.id_user_from_wcs,
                 a.description,
                 MAX (a.plan_day) plan_day,
                 MAX (a.time_go_in) time_go_in,
                 MAX (a.time_go_out) time_go_out
          FROM (SELECT a.id_user_lm,
                       a.tab_num,
                       a.id_user_from_wcs,
                       description,
                       plan_day,
                       time_go_in,
                       time_go_out
                FROM pers_pers_day a
                     WHERE fact_go_in = 1 AND fact_go_out = 0
                UNION
                SELECT id_user_lm,
                       a.tab_num,
                       a.id_user_from_wcs,
                       description,
                       plan_day,
                       time_go_in,
                       time_go_out
               FROM pers_pers_day a
               WHERE fact_go_in = 1 AND fact_go_out = 1 AND time_go_out >= SYSDATE - 2 / 24) a
         WHERE a.plan_day >= TRUNC (SYSDATE) - 2 AND a.tab_num IS NOT NULL
         GROUP BY a.id_user_lm, a.description, a.tab_num, a.id_user_from_wcs
         ORDER BY time_go_in
     ),
*/
   with unvalid_work as (
         SELECT  a.operating_day,
                 a.id_dept_pers,
                 a.id_dept,
                 a.id_dept_birzha,
                 a.id_work,
                 a.fact,
                 a.fact2,
                 a.fact3,
                 a.user_demande,
                 a.start_work,
                 a.num_mission,
                 a.tab_num,
                 a.id_str_birzha,
                 a.num_work_unstop,
                 a.marc_birzha,
                 a.marc_time,
                 a.marc_unstop,
                 a.id_shift_check_in,
                 a.id_brigade,
                 a.date_brigade,
                 a.role,
                 NVL (LAG (id_work, 1) OVER (ORDER BY start_work DESC, num_mission, id_work),
                                          id_work)
                                       AS  prep_id_work,
                 NVL (LEAD (id_work, 1) OVER (ORDER BY start_work DESC, num_mission, id_work),
                                          id_work)
                                       AS  next_id_work

         FROM plan_pers_temp_works_new a
           --   INNER JOIN users u
                 --        ON a.tab_num = u.tab_num
         WHERE 1 = 1
               --AND start_work >= trunc(u.time_go_in)  --все работы невалидные за день!!! даже если не отметился
               AND start_work >= SYSDATE - 1
               AND start_work <= SYSDATE
               AND a.valid_work = 0
    )

     SELECT operating_day,
            id_dept_pers,
            id_dept,
            id_dept_birzha,
            id_work,
            fact,
            fact2,
            fact3,
            user_demande,
            start_work,
            LAG (start_work, 1) OVER (ORDER BY start_work DESC, num_mission, id_work) AS end_work,
            num_mission,
            tab_num,
            id_str_birzha,
            num_work_unstop,
            marc_birzha,
            marc_unstop,
            marc_time,
            id_shift_check_in,
            id_brigade,
            date_brigade,
            role,
            CASE
                WHEN id_work <> next_id_work THEN 1000
                WHEN id_work <> prep_id_work THEN 100
            ELSE 100
            END  etat
     BULK COLLECT INTO tab_pers_work
     From unvalid_work
     ORDER BY start_work DESC, num_mission, id_work;

     FOR i IN 1 .. tab_pers_work.COUNT LOOP
        MERGE INTO PP_UNVALID_WORKS_UNGROUP ppuwu
         USING DUAL
                ON (
                    ppuwu.operating_day = tab_pers_work(i).operating_day
                     AND ppuwu.id_dept = tab_pers_work(i).id_dept
                     AND  DECODE(ppuwu.id_dept_pers, NULL, 999, ppuwu.id_dept_pers)  = DECODE(tab_pers_work(i).id_dept_pers, NULL, 999, tab_pers_work(i).id_dept_pers)
                     AND  ppuwu.id_work = tab_pers_work(i).id_work
                     AND  ppuwu.user_demande = tab_pers_work(i).user_demande
                     AND  ppuwu.tab_num = tab_pers_work(i).tab_num
                     AND  ppuwu.start_work = tab_pers_work(i).start_work
                     AND  CASE
                           WHEN ppuwu.num_mission is null Then '-'
                           ELSE ppuwu.num_mission
                          END =
                          CASE
                            WHEN tab_pers_work(i).num_mission IS NULL
                            THEN  '-'
                            ELSE tab_pers_work(i).num_mission
                          END
                    )
        WHEN MATCHED THEN
            UPDATE SET
                ppuwu.fact = tab_pers_work (i).fact,
                ppuwu.fact2 = tab_pers_work (i).fact2,
                ppuwu.fact3 = tab_pers_work (i).fact3,
                ppuwu.end_work  = tab_pers_work (i).end_work,
                ppuwu.etat = tab_pers_work (i).etat
            WHERE
                 ppuwu.fact <> tab_pers_work (i).fact
                 AND DECODE(ppuwu.fact2, null, 0, ppuwu.fact2) <> DECODE(tab_pers_work (i).fact2, null, 0, tab_pers_work (i).fact2)
                 AND DECODE(ppuwu.fact3, null, 0, ppuwu.fact3) <> DECODE(tab_pers_work (i).fact3, null, 0, tab_pers_work (i).fact3)
                 AND ( ppuwu.end_work IS NULL
                       OR ppuwu.end_work <> tab_pers_work (i).end_work
                       OR ppuwu.etat <> tab_pers_work (i).etat )

        WHEN NOT MATCHED THEN
            INSERT     ( ppuwu.operating_day,
                         ppuwu.id_dept_pers,
                         ppuwu.id_dept,
                         ppuwu.id_dept_birzha,
                         ppuwu.id_work,
                         ppuwu.fact,
                         ppuwu.fact2,
                         ppuwu.fact3,
                         ppuwu.user_demande,
                         ppuwu.start_work,
                         ppuwu.end_work,
                         ppuwu.num_mission,
                         ppuwu.tab_num,
                         ppuwu.id_str_birzha,
                         ppuwu.num_work_unstop,
                         ppuwu.marc_birzha,
                         ppuwu.marc_unstop,
                         ppuwu.marc_time,
                         ppuwu.id_shift_check_in,
                         ppuwu.id_brigade,
                         ppuwu.date_brigade,
                         ppuwu.role,
                         ppuwu.etat)
                VALUES ( tab_pers_work (i).operating_day,
                         tab_pers_work (i).id_dept_pers,
                         tab_pers_work (i).id_dept,
                         tab_pers_work (i).id_dept_birzha,
                         tab_pers_work (i).id_work,
                         tab_pers_work (i).fact,
                         tab_pers_work (i).fact2,
                         tab_pers_work (i).fact3,
                         tab_pers_work (i).user_demande,
                         tab_pers_work (i).start_work,
                         tab_pers_work (i).end_work,
                         tab_pers_work (i).num_mission,
                         tab_pers_work (i).tab_num,
                         tab_pers_work (i).id_str_birzha,
                         tab_pers_work (i).num_work_unstop,
                         tab_pers_work (i).marc_birzha,
                         tab_pers_work (i).marc_unstop,
                         tab_pers_work (i).marc_time,
                         tab_pers_work (i).id_shift_check_in,
                         tab_pers_work (i).id_brigade,
                         tab_pers_work (i).date_brigade,
                         tab_pers_work (i).role,
                         tab_pers_work (i).etat);

    END LOOP;

END;
