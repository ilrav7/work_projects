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
           null num_work_unstop,
           num_mission,
           0 marc_time
                         
    FROM  plan_pers_work_ungroup_new 
    WHERE 1 = 1
    /*      &date_PLN -- одновременно срабатывание с date_pln
        --  &dept_sotr1
          &date_ZP --по зп общий
          &date_filter -- по PLN (смена сотрудника)
    */    
          AND start_work >= To_date('01.02.2020', 'dd.mm.yyyy') 
          AND start_work <= To_date( '29.02.2020', 'dd.mm.yyyy') + 1.5   
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
           num_work_unstop,
           num_mission,
           marc_time
          
    FROM  pp_unvalid_works_ungroup 
    WHERE 1 = 1
     /*     &date_PLN -- одновременно срабатывание с date_pln
         -- &dept_sotr2
          &date_ZP --по зп общий
          &date_filter -- по PLN (смена сотрудника)
          &mission_unique
          
     */
          AND start_work >= To_date('01.02.2020', 'dd.mm.yyyy') 
          AND start_work <= To_date( '29.02.2020', 'dd.mm.yyyy') + 1.5    
    
),

PPWUN AS (
         Select
                TRUNC(end_work - start_work) as DAYS,
                TRUNC((end_work - start_work) * 24 ) as HOURS,
                TRUNC(MOD((end_work - start_work) * 24 * 60, 60)) as MINUTES,
                ROUND(MOD(MOD((end_work - start_work) * 24 * 3600, 3600), 60)) as SECONDS,
                tab.*
         FROM tab       
),

init_data as (
Select  PPWUN.operating_day,
        PPW.tab_num,
        PPDOL.title_short,
        PPW.FULL_NAME,
        PPDU.dept_name_short as DEPT_USER, -- подразделение сотрудника
        PPD.dept_name_short as DEPT_WORK,
        PPWL.WORK_UNIT,
        PPWL.id_work,
        PPWL.WORK_NAME,
        pidpwt.name_work_zp as PAYMENT_GENERAL,
        PPWL.measure_unit,
        PPWUN.FACT,
        PPWUN.start_work,
        PPWUN.end_work,
        LPAD(PPWUN.DAYS, 2, '0')||':'||LPAD(PPWUN.HOURS, 2, '0')||':'||LPAD(PPWUN.MINUTES, 2, '0')||':'||LPAD(PPWUN.SECONDS, 2, '0') AS diff_time,
        CASE 
            WHEN valid_work = 1 Then 'ДА'
            WHEN valid_work = 0 Then 'НЕТ'
            ELSE ' - '
        END valide_work,
        CASE 
            WHEN (PPWUN.start_work >= ppb.time_sent) AND 
                  (PPWUN.start_work <= ppb.time_confirm_transfer)
            Then 'Да'
            ELSE 'Нет'
        END birzha,
        CASE 
            WHEN PPWUN.num_work_unstop is not NULL  
            Then 'Да'
            ELSE 'Нет'
        END KTU,
        CASE 
            WHEN PPWUN.start_work < PPWUN.operating_day + 8/24 
            THEN 'Да'
            Else 'Нет'
        END start_early,
        CASE 
            WHEN PPWUN.start_work > PPWUN.operating_day + 8/24 + 1
            THEN 'Да'
            Else 'Нет'
        END late_end,
       
       CASE 
          WHEN PPWUN.start_work <= PPWUN.operating_day + 8/24 + 1
          THEN operating_day
          ELSE Trunc(PPWUN.start_work)
        END ZP_OP_DAY,
         CASE 
          WHEN  PPWUN.start_work < To_Date('01.02.2020' || '08:00:00', 'dd.mm.yyyy hh24:mi:ss')
                 AND  ppday.id_shift_check_in in (1, 3)
          THEN PPWUN.start_work
          WHEN  ppday.time_go_in < To_Date('01.02.2020' || '08:00:00', 'dd.mm.yyyy hh24:mi:ss')
                AND  ppday.id_shift_check_in in (1, 3)
          THEN ppday.time_go_in
          ELSE To_Date('01.02.2020' || '08:00:00', 'dd.mm.yyyy hh24:mi:ss')
       END go_in,
       CASE 
          WHEN  (PPWUN.start_work > To_Date('29.02.2020' || '08:00:00', 'dd.mm.yyyy hh24:mi:ss') + 1) 
                AND  ppday.id_shift_check_in in (2, 4)
          THEN PPWUN.start_work
          WHEN  (ppday.time_go_out > To_Date('29.02.2020' || '08:00:00', 'dd.mm.yyyy hh24:mi:ss') + 1)
                AND  ppday.id_shift_check_in in (2, 4) 
          THEN ppday.time_go_out
          ELSE To_Date('29.02.2020' || '08:00:00', 'dd.mm.yyyy hh24:mi:ss') + 1
       END go_out, 
       DECODE (ppc98.workday,  'ДА', 'Смена A',  'НЕТ', 'Смена Б',  NULL) workshift,
       DECODE (ppday.id_shift_check_in,  1, 'День',  2, 'Ночь',  3, 'День',  4, 'Ночь',  NULL) id_shift_check_in,
       ppwK.id_work as WORK_KTU,
       PPWL_KTU.work_name as KTU_NAME,
       num_mission,
       valid_work,
       CASE 
          WHEN marc_time = 1
               AND time_go_in > PPWUN.start_work
          THEN 'Да' 
          ELSE 'Нет'
       END WORK_Without_MARK_DAY,
        CASE 
          WHEN marc_time = 1
               AND  time_go_out < PPWUN.start_work
          THEN 'Да'
          ELSE 'Нет' 
       END WORK_Without_MARK_NIGTH    
        
From  PPWUN
      INNER JOIN plan_pers_works_list PPWL 
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
      LEFT JOIN plan_pers_prodcalend ppc98 
             ON ppc98.num_prod = 98
                AND ppc98.day_id = PPWUN.operating_day
      LEFT JOIN plan_pers_works_list PPWL_KTU 
              ON PPWL_KTU.id_work = ppwK.id_work                            
      
WHERE 1 = 1 
      --and ppw.tab_num = 'RUS77MCO015087'
      and ppw.tab_num = 'RUS77MCO106033'

   /*  &dept_FILTER
     &deptUSER_filter  
     &fio_filter  */
),

tab_time_interval as (
    SELECT * 
    FROM init_data
    WHERE start_work >= go_in
          AND  start_work <= go_out
),

tab_group1 as (
    Select  tab_num, 
           -- title_short, 
           -- full_name, 
         --   dept_user,
          --  DEPT_WORK,
            id_work, 
            work_name,
         --   measure_unit,
            operating_day,
            CASE 
              WHEN start_work <= operating_day + 8/24 + 1
              THEN operating_day
              ELSE Trunc(start_work)
            END ZP_OP_DAY,
         --   work_unit,
            KTU,
            KTU_NAME,
            start_early,
            late_end,
            birzha,
            pidpwt.name_work_zp as PAYMENT_GENERAL,
            WORK_Without_MARK_DAY,
            WORK_Without_MARK_NIGTH,
            sum (Case When valid_work = 1 Then fact END) as ValidW,
            sum (Case When valid_work = 0 Then fact END) as UnValidW
            
    From tab_time_interval tti
          LEFT JOIN pers_itog_dt_plan_work_temp pidpwt
              ON tti.id_work = pidpwt.num_work_res_plan
    Group by tab_num, 
             title_short, 
             full_name, 
             dept_user, 
             DEPT_WORK,
             id_work, 
             work_name,
             measure_unit,
             operating_day,
             CASE 
                WHEN start_work <= operating_day + 8/24 + 1
                THEN operating_day
                ELSE Trunc(start_work)
            END,
            work_unit,
            KTU,
            KTU_NAME,
            start_early,
            late_end,
            birzha,
            pidpwt.name_work_zp,
            WORK_Without_MARK_DAY,
            WORK_Without_MARK_NIGTH 
),
tab_group2 as (
SELECT tab_num, 
           -- title_short, 
           -- full_name, 
         --   dept_user,
          --  DEPT_WORK,
            id_work, 
            work_name,
         --   measure_unit,
         --   operating_day,
         --   ZP_OP_DAY,
         --   work_unit,
            KTU,
            KTU_NAME,
            start_early,
            late_end,
            birzha,
            PAYMENT_GENERAL, --наименование ЗП общий
            WORK_Without_MARK_DAY,
            WORK_Without_MARK_NIGTH,
           --  to_char(operating_day, 'MM'),
          --  to_char(ZP_OP_DAY, 'MM'),
           -- 'c '||MIN(operating_day) ||' по '||MAX (operating_day),
           -- 'c '||MIN(ZP_OP_DAY) ||' по '||MAX (ZP_OP_DAY),
            MIN(operating_day) as OP,
            MAX(ZP_OP_DAY) as ZP,
            CASE
                WHEN to_char(ZP_OP_DAY, 'MM') = to_char(operating_day, 'MM')
                THEN NULL
                ELSE MIN(operating_day)||' '|| MAX(ZP_OP_DAY)
            END DT,
            sum(ValidW) as ValidW,
            sum(UnValidW) as unValidW
FROM tab_group1
    
group by to_char(ZP_OP_DAY, 'MM'),
         to_char(operating_day, 'MM'),
         
         tab_num, 
         -- title_short, 
         -- full_name, 
         --   dept_user,
         --  DEPT_WORK,
         id_work, 
         work_name,
         --   measure_unit,
       
         --   work_unit,
         KTU,
         KTU_NAME,
         start_early,
         late_end,
         birzha,
         PAYMENT_GENERAL, --наименование ЗП общий
         WORK_Without_MARK_DAY,
         WORK_Without_MARK_NIGTH
)

Select *
           
           
From tab_group2
Group by payment_general,
         work_name,
         DT
         
