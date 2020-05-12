WITH PPWUN AS (
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
       sum((end_work - start_work) * 24 * 60) as diff_MINUT,
       unit_temp,
       MAX (etat) etat,
       id_workplace,
       unit_txt,
       id_shift,
       MAX (user_completed) user_completed,
       MAX (id_shift_check_in) id_shift_check_in
                    
FROM plan_pers_work_ungroup_new 
         
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
)


Select  PPWUN.operating_day,
        PPW.tab_num,
        PPDOL.title_short,
        PPW.FULL_NAME,
        PPDU.dept_name_short as DEPT_USER, -- подразделение сотрудника
        PPD.dept_name_short,
        PPWL.WORK_UNIT,
        PPWL.WORK_NAME,
        PPWL.measure_unit,
        PPWUN.FACT,
        PPN.normo,
        PPN.money,
        PPN.normo2,
        PPN.money2,
        PPN.normo3,
        PPN.money3,
        PPWUN.start_work,
        PPWUN.end_work,
        round((PPWUN.end_work - PPWUN.start_work)*24*60, 3) as diff,
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
      AND  ppd.id_dept = 13
      AND PPW.tab_num = 'RUS77MCO044526' 
      AND PPWUN.operating_day >= To_DATE('24.12.2019', 'dd.mm.yyyy')
      AND PPWUN.operating_day <= To_DATE('24.12.2019', 'dd.mm.yyyy')     
