WITH TAB AS (
   SELECT operating_day,
           id_dept,
           plan,
           fact,
           fact2,
           fact3,
           user_demande,
           id_work,
           tab_num,
           start_work,
           end_work,
           unit_temp,
           etat,
           id_workplace,
           unit_txt,
           1 as valid_work,
           null num_work_unstop
                         
    FROM  plan_pers_work_ungroup_new 
    WHERE 1 = 1
       --   &date_ZP
       --   &date_filter 
          AND operating_day >= To_date('11.02.2020', 'dd.mm.yyyy')
          AND operating_day <= To_date('11.02.2020', 'dd.mm.yyyy') 
    UNION ALL
    SELECT operating_day,
           id_dept,
           null plan,
           fact,
           fact2,
           fact3,
           user_demande,
           id_work,
           tab_num,
           start_work,
           end_work,
           null unit_temp,
           etat,
           null id_workplace,
           null unit_txt,
           0 as valid_work,
           num_work_unstop          
    FROM  pp_unvalid_works_ungroup 
    WHERE 1 = 1
         -- &date_ZP 
        --  &date_filter
          AND operating_day >= To_date('11.02.2020', 'dd.mm.yyyy')
          AND operating_day <= To_date('11.02.2020', 'dd.mm.yyyy')        
    
),

PPWUN AS (
         Select
                CASE 
                    WHEN (end_work - start_work) = 0
                    THEN 0.5 / 60
                    ELSE  (end_work - start_work)* 24 * 60
                END Time_Work_MINUTES,
                TRUNC(end_work - start_work) as DAYS,
                TRUNC((end_work - start_work) * 24 ) as HOURS,
                TRUNC(MOD((end_work - start_work) * 24 * 60, 60)) as MINUTES,
                ROUND(MOD(MOD((end_work - start_work) * 24 * 3600, 3600), 60)) as SECONDS,
                tab.*
         FROM tab       
)

Select  PPWUN.operating_day,
        PPW.tab_num,
        PPDOL.title_short,
        PPW.FULL_NAME,
        PPDU.dept_name_short as DEPT_USER, -- подразделение сотрудника
        PPD.dept_name_short,
        PPWL.WORK_UNIT,
        PPWL.id_work,
        PPWL.WORK_NAME,
        pidpwt.name_work_zp as PAYMENT_GENERAL,
        PPWL.measure_unit,
        PPWUN.FACT,
        ROUND(Time_Work_MINUTES, 4),
        PPWUN.start_work,
        PPWUN.end_work,
        LPAD(DAYS, 2, '0')||':'||LPAD(HOURS, 2, '0')||':'||LPAD(MINUTES, 2, '0')||':'||LPAD(SECONDS, 2, '0') AS diff_time,
        CASE 
            WHEN valid_work = 1 Then 'ДА'
            WHEN valid_work = 0 Then 'НЕТ'
            ELSE ' - '
        END valide_work,
        null as Разделитель, 
        CASE 
            WHEN (PPWUN.start_work >= ppb.time_sent) AND 
                  (PPWUN.start_work <= ppb.time_confirm_transfer)
            Then 'Да'
            ELSE 'Нет'
        END birzha,
        CASE 
            WHEN PPWUN.num_work_unstop is NULL  
            Then 'Нет'
            ELSE 'Да'
        END KTU,
        CASE 
            WHEN PPWUN.start_work < To_Date(operating_day || '08:00:00', 'dd.mm.yyyy hh24:mi:ss')
            THEN 'Да'
            Else 'Нет'
        END start_early,
        CASE 
            WHEN PPWUN.start_work > To_Date(operating_day || '08:00:00', 'dd.mm.yyyy hh24:mi:ss') + 1
            THEN 'Да'
            Else 'Нет'
        END late_end
      --  ppday.time_go_in,
      --  NVL(ppday.time_go_out, TO_DATE('01.01.0001', 'dd.mm.yyyy')) as time_go_out
        
From  PPWUN
      LEFT JOIN plan_pers_works_list PPWL 
              ON PPWUN.id_work = PPWL.id_work 
      INNER JOIN plan_pers_dept PPD 
              ON PPWUN.id_dept = PPD.id_dept       
      INNER JOIN plan_pers_workers PPW 
              ON PPWUN.tab_num = PPW.tab_num
      INNER JOIN plan_pers_dept PPDU 
              ON PPDU.id_dept = PPW.id_division_res_plan        
      LEFT JOIN plan_pers_dolgnost PPDOL 
              ON PPW.id_title_res_plan = PPDOL.id_title
      INNER JOIN user_access_dept uad
              ON uad.id_dept = PPW.ID_DIVISION_RES_PLAN
             -- AND uad.id_user = :nom_user
           AND uad.id_user = 46023 
      LEFT JOIN plan_pers_time_deviation PPTD 
             ON PPTD.id_work = PPWL.id_work
                AND extract(MONTH FROM PPWUN.operating_day) = PPTD.month_deviation
                 AND extract(YEAR FROM PPWUN.operating_day) = PPTD.year_deviation
      LEFT JOIN plan_pers_birzha ppb 
             ON ppb.tab_num = PPW.tab_num
               and PPWUN.operating_day = ppb.plan_day
               and PPDU.id_dept = ppb.id_dept_transfer
      LEFT JOIN plan_pers_work_ktu ppwK 
             ON ppwK.num_work = PPWUN.num_work_unstop
      INNER JOIN pers_pers_day ppday 
              ON PPWUN.operating_day = ppday.plan_day
                 AND PPWUN.tab_num = ppday.tab_num
      LEFT JOIN pers_itog_dt_plan_work_temp pidpwt
              ON PPWL.id_work = pidpwt.num_work_res_plan                            
   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = PPW.ID_SHEDULER_RES_PLAN
   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = 98
   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = 99
      
WHERE 1 = 1 
       and ppw.tab_num = 'RUS77MCO106033'
    -- &dept_FILTER
    -- &deptUSER_filter  
    -- &fio_filter

