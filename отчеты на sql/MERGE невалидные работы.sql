MERGE INTO PP_UNVALID_WORKS_UNGROUP ppuwu
         USING (
         WITH  unvalid_work as (
         SELECT   operating_day,
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
         WHERE 1 = 1
               AND start_work >= To_date('12.01.2020', 'dd.mm.yyyy')
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
     From unvalid_work
     where 1 = 1
           -- and tab_num = 'RUS77MCO088504'
           -- AND operating_day = To_date('11.02.2020', 'dd.mm.yyyy')
     ORDER BY start_work DESC, num_mission, id_work) temp
                ON (
                    ppuwu.operating_day = temp.operating_day
                     AND ppuwu.id_dept = temp.id_dept
                     AND  DECODE(ppuwu.id_dept_pers, NULL, 999, ppuwu.id_dept_pers)  = DECODE(temp.id_dept_pers, NULL, 999, temp.id_dept_pers)
                     AND  ppuwu.id_work = temp.id_work
                     AND  ppuwu.user_demande = temp.user_demande
                     AND  ppuwu.tab_num = temp.tab_num
                     AND  ppuwu.start_work = temp.start_work
                     AND  CASE
                           WHEN ppuwu.num_mission is null Then '-'
                           ELSE ppuwu.num_mission
                          END =
                          CASE
                            WHEN temp.num_mission IS NULL
                            THEN  '-'
                            ELSE temp.num_mission
                          END
                    )
        WHEN MATCHED THEN
            UPDATE SET
                ppuwu.fact =temp.fact,
                ppuwu.fact2 = temp.fact2,
                ppuwu.fact3 = temp.fact3,
                ppuwu.end_work  = temp.end_work,
                ppuwu.etat = temp.etat
            WHERE
                 ppuwu.fact <> temp.fact
                 AND DECODE(ppuwu.fact2, null, 0, ppuwu.fact2) <> DECODE(temp.fact2, null, 0, temp.fact2)
                 AND DECODE(ppuwu.fact3, null, 0, ppuwu.fact3) <> DECODE(temp.fact3, null, 0, temp.fact3)
                 AND ( ppuwu.end_work IS NULL
                       OR ppuwu.end_work <> temp.end_work
                       OR ppuwu.etat <> temp.etat )

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
                VALUES ( temp.operating_day,
                         temp.id_dept_pers,
                         temp.id_dept,
                         temp.id_dept_birzha,
                         temp.id_work,
                         temp.fact,
                         temp.fact2,
                         temp.fact3,
                         temp.user_demande,
                         temp.start_work,
                         temp.end_work,
                         temp.num_mission,
                         temp.tab_num,
                         temp.id_str_birzha,
                         temp.num_work_unstop,
                         temp.marc_birzha,
                         temp.marc_unstop,
                         temp.marc_time,
                         temp.id_shift_check_in,
                         temp.id_brigade,
                         temp.date_brigade,
                         temp.role,
                         temp.etat);
