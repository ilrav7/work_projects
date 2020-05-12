WITH TAB AS (
    SELECT operating_day,
           id_dept,
           id_work,
           plan,
           SUM (fact) fact,
           SUM (fact2) fact2,
           SUM (fact3) fact3,
           user_demande,
           tab_num,
           MIN (start_work) start_work,
           CASE WHEN MAX (etat) = 100 THEN NULL ELSE MAX (end_work) END end_work,
           unit_temp,
           MAX (etat) etat,
           id_workplace,
           unit_txt,
           id_shift,
           MAX (user_completed) user_completed,
           MAX (id_shift_check_in) id_shift_check_in                   
    FROM plan_pers_work_ungroup_new
    WHERE 1 = 1
          AND operating_day >= To_DATE('24.12.2019', 'dd.mm.yyyy')
             AND operating_day <= To_DATE('24.12.2019', 'dd.mm.yyyy')   
    GROUP BY operating_day,
             id_dept,
             id_work,
             plan,
             user_demande,
             unit_temp,
             id_workplace,
             unit_txt,
             id_shift,
             tab_num
),

PPWUN AS (
         Select ROUND((end_work - start_work)*24, 4) as Time_Work_Sec,
                TRUNC(end_work - start_work) as DAYS,
                TRUNC((end_work - start_work) * 24 ) as HOURS,
                TRUNC(MOD((end_work - start_work) * 24 * 60, 60)) as MINUTES,
                ROUND(MOD(MOD((end_work - start_work) * 24 * 3600, 3600), 60)) as SECONDS,
                tab.*
         FROM tab       
),

Group_Days as (
    Select  PPWUN.operating_day,
        PPW.tab_num,
        PPDOL.title_short,
        PPW.FULL_NAME,
        PPDU.dept_name_short as DEPT_USER, -- подразделение сотрудника
        PPD.dept_name_short,
        PPWL.WORK_UNIT,
        PPWL.WORK_NAME,
        PPWL.measure_unit,
        Time_Work_Sec,
        ROUND((PPWUN.FACT / Time_Work_Sec), 4) as Perf_One_Hours,
        ROUND((PPWUN.FACT / Time_Work_Sec)*100 / PPN.normo , 2) as Perf_In_Perc, 
        PPWUN.FACT,
        PPN.normo,
        PPN.money,
        PPN.normo2,
        PPN.money2,
        PPN.normo3,
        PPN.money3,
        PPWUN.start_work,
        PPWUN.end_work,
        LPAD(DAYS, 2, '0')||':'||LPAD(HOURS, 2, '0')||':'||LPAD(MINUTES, 2, '0')||':'||LPAD(SECONDS, 2, '0') AS TIME_WORK_FULL,
        PPWUN.UNIT_TEMP
        
From  PPWUN
      INNER JOIN plan_pers_works_list PPWL 
              ON PPWUN.id_work = PPWL.id_work
      LEFT JOIN plan_pers_normo PPN
              ON PPN.id_work = PPWL.id_work
      INNER JOIN plan_pers_dept PPD 
              ON PPWUN.id_dept = PPD.id_dept       
      INNER JOIN plan_pers_workers PPW 
              ON PPWUN.tab_num = PPW.tab_num
      INNER JOIN plan_pers_dept PPDU 
              ON PPDU.id_dept = PPW.id_division_res_plan        
      LEFT JOIN plan_pers_dolgnost PPDOL 
              ON PPW.id_title_res_plan = PPDOL.id_title
   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = PPW.ID_SHEDULER_RES_PLAN
   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = 98
   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = 99
      
WHERE 1 = 1
  AND lower(PPW.full_name) like '%ткач%'
     AND ppd.id_dept = 13 
)

Select  tab_num, 
        title_short, 
        full_name, 
        dept_user, 
        dept_name_short, 
        sum(time_work_sec),
        ROUND(avg(perf_one_hours), 2),
        ROUND(avg(perf_in_perc), 2),
        sum(fact),
        normo
From Group_Days
Group by tab_num, 
         title_short, 
         full_name, 
         dept_user, 
         dept_name_short, 
         normo



