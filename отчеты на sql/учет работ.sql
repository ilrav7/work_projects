var date_start varchar(10);
exec :date_start := '01.03.2020' ;
var date_end varchar(10);
exec :date_end := '23.03.2020' ;
var nom_user number;
exec :nom_user := 46023;

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
           0 marc_time
                         
    FROM  plan_pers_work_ungroup_new 
    WHERE 1 = 1
        /*  &date_PLN -- одновременно срабатывание с date_pln
          &date_ZP --по зп общий
          &date_filter -- по PLN (смена сотрудника) */
        
      AND start_work >= To_date(:date_start, 'dd.mm.yyyy') 
      AND start_work <= To_date(:date_end, 'dd.mm.yyyy') + 1.5    
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
          -- num_mission,
           marc_time
          
    FROM  pp_unvalid_works_ungroup 
    WHERE 1 = 1
      /*    &date_PLN -- одновременно срабатывание с date_pln
          &date_ZP --по зп общий
          &date_filter -- по PLN (смена сотрудника)
      */
       AND start_work >= To_date(:date_start, 'dd.mm.yyyy') 
       AND start_work <= To_date(:date_end, 'dd.mm.yyyy') + 1.5        
    
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
        PPD.dept_name_short,
        PPWL.WORK_UNIT,
        PPWL.id_work,
        PPWL.WORK_NAME,
        PPWL.measure_unit,
        PPWUN.FACT,
        PPWUN.start_work,
        PPWUN.end_work,
        LPAD(PPWUN.DAYS, 2, '0')||':'||LPAD(PPWUN.HOURS, 2, '0')||':'||LPAD(PPWUN.MINUTES, 2, '0')||':'||LPAD(PPWUN.SECONDS, 2, '0') AS diff_time,
        valid_work,
        CASE 
            WHEN (PPWUN.start_work >= ppb.time_sent) AND 
                  (PPWUN.start_work <= ppb.time_confirm_transfer)
            Then 1
            ELSE 0
        END birzha,
        CASE 
            WHEN PPWUN.num_work_unstop is not NULL  
            Then 1
            ELSE 0
        END KTU,
        CASE
            --  WHEN PPWUN.start_work < PPWUN.operating_day + 8/24
            WHEN PPWUN.start_work < TO_DATE(:date_start || '08:00:00', 'dd.mm.yyyy hh24:mi:ss') 
            THEN 1
            Else 0
        END start_early,
        CASE 
           -- WHEN PPWUN.start_work > PPWUN.operating_day + 8/24 + 1
            WHEN PPWUN.start_work > TO_DATE(:date_end || '08:00:00', 'dd.mm.yyyy hh24:mi:ss') + 1
            THEN 1
            Else 0
        END late_end,    
       CASE 
          WHEN PPWUN.start_work <= PPWUN.operating_day + 8/24 + 1
          THEN operating_day
          ELSE Trunc(PPWUN.start_work)
        END ZP_OP_DAY,
         CASE 
          WHEN  PPWUN.start_work < To_Date(:date_start || '08:00:00', 'dd.mm.yyyy hh24:mi:ss')
                 AND  ppday.id_shift_check_in in (1, 3)
          THEN PPWUN.start_work
          WHEN  ppday.time_go_in < To_Date(:date_start || '08:00:00', 'dd.mm.yyyy hh24:mi:ss')
                AND  ppday.id_shift_check_in in (1, 3)
          THEN ppday.time_go_in
          ELSE To_Date(:date_start || '08:00:00', 'dd.mm.yyyy hh24:mi:ss')
       END go_in,
       CASE 
          WHEN  (PPWUN.start_work > To_Date(:date_end || '08:00:00', 'dd.mm.yyyy hh24:mi:ss') + 1) 
                AND  ppday.id_shift_check_in in (2, 4)
          THEN PPWUN.start_work
          WHEN  (ppday.time_go_out > To_Date(:date_end || '08:00:00', 'dd.mm.yyyy hh24:mi:ss') + 1)
                AND  ppday.id_shift_check_in in (2, 4) 
          THEN ppday.time_go_out
          ELSE To_Date(:date_end || '08:00:00', 'dd.mm.yyyy hh24:mi:ss') + 1
       END go_out, 
       DECODE (ppc98.workday,  'ДА', 'Смена A',  'НЕТ', 'Смена Б',  NULL) workshift,
       DECODE (ppday.id_shift_check_in,  1, 'День',  2, 'Ночь',  3, 'День',  4, 'Ночь',  NULL) id_shift_check_in,
       ppwK.id_work as WORK_KTU,
       PPWL_KTU.work_name as KTU_NAME,
       CASE 
          WHEN marc_time = 1
               AND time_go_in > PPWUN.start_work
               AND trunc(PPWUN.start_work) = To_date(:date_start, 'dd.mm.yyyy')
          THEN 1 
          ELSE 0
       END WORK_Without_MARK_DAY,
        CASE 
          WHEN marc_time = 1
               AND  time_go_out < PPWUN.start_work
               AND trunc(PPWUN.start_work) = To_date(:date_end, 'dd.mm.yyyy')
          THEN 1
          ELSE 0 
       END WORK_Without_MARK_NIGTH,
       PPWUN.user_demande    
        
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
              AND uad.id_user = :nom_user
           --   AND uad.id_user = 46023 
      LEFT JOIN plan_pers_birzha ppb 
             ON ppb.tab_num = PPW.tab_num
               and PPWUN.operating_day = ppb.plan_day
               and PPDU.id_dept = ppb.id_dept_transfer
      LEFT JOIN plan_pers_work_ktu ppwK 
             ON ppwK.num_work = PPWUN.num_work_unstop
      INNER JOIN pers_pers_day ppday 
              ON PPWUN.operating_day = ppday.plan_day
                 AND PPWUN.tab_num = ppday.tab_num
    --  LEFT JOIN pers_itog_dt_plan_work_temp pidpwt
    --          ON PPWL.id_work = pidpwt.num_work_res_plan
      LEFT JOIN plan_pers_prodcalend ppc98 
             ON ppc98.num_prod = 98
                AND ppc98.day_id = PPWUN.operating_day
      LEFT JOIN plan_pers_works_list PPWL_KTU 
              ON PPWL_KTU.id_work = ppwK.id_work                            

      
WHERE 1 = 1 
      -- and ppw.tab_num = 'RUS77MCO015087'
      and ppw.tab_num = 'RUS77MCO106033'
      --  and ppw.tab_num = 'RUS77MCO075881'
    /* &dept_FILTER
     &deptUSER_filter  
     &fio_filter */
     
),

tab_interval as (
    SELECT operating_day,
           ZP_OP_DAY, 
           tab_num,
           title_short,
           FULL_NAME,
           DEPT_USER, -- подразделение сотрудника
           dept_name_short as DEPT_WORK,
           WORK_UNIT,
           id_work,
           WORK_NAME,
           measure_unit,
           FACT,
           start_work,
           end_work,
           diff_time,
           valid_work,
           CASE
               WHEN start_early = 1
                   THEN 1 
               WHEN late_end = 1
                   THEN 2 
               WHEN WORK_Without_MARK_DAY = 1 
                   THEN 3
               WHEN WORK_Without_MARK_NIGTH = 1 
                   THEN 4    
               ELSE 5 -- нормальный интервал       
           END interval_work,
           CASE
               WHEN birzha = 111
                   THEN 1 
               WHEN KTU = 1
                   THEN 222     
               ELSE 333 -- прочее       
           END type_work,
           workshift,
           id_shift_check_in,
           CASE 
               WHEN operating_day < To_date(:date_start, 'dd.mm.yyyy')
                    THEN 1 --предыдущий период (день до начала)
               WHEN operating_day > To_date(:date_end, 'dd.mm.yyyy')
                    THEN 2 -- следующий период (день после окончания)
               ELSE 0 -- операционный день
           END op_day,
           user_demande
    FROM init_data
    WHERE start_work >= go_in
          AND  start_work <= go_out
),

tab_result as (
Select  -- 'c '||to_char(MIN(operating_day), 'dd.mm.yyyy')
        -- ||' по '|| to_char(MAX(ZP_OP_DAY), 'dd.mm.yyyy') as DT,
         tab_num, 
         title_short, 
         full_name, 
         dept_user,
         DEPT_WORK,
         id_work, 
         work_name,
         measure_unit,
         work_unit,
         
       sum( CASE 
              WHEN interval_work = 1 
                   AND type_work = 111
              THEN fact
              ELSE 0
          END ) early_birzha,
       sum( CASE 
              WHEN interval_work = 1 
                   AND type_work = 222
              THEN fact
              ELSE 0
          END ) early_KTU,
       sum( CASE 
              WHEN interval_work = 1 
                   AND type_work = 333
                   AND valid_work = 1
              THEN fact
              ELSE 0
          END ) early_Other,
       sum( CASE 
              WHEN interval_work = 1 
                   AND type_work not in (111, 222) 
                   AND valid_work = 0
              THEN fact
              ELSE 0
          END ) early_Unvalid,   
        sum( CASE 
              WHEN interval_work = 2 
                   AND type_work = 111
              THEN fact
              ELSE 0
          END ) late_birzha,
       sum( CASE 
              WHEN interval_work = 2 
                   AND type_work = 222
              THEN fact
              ELSE 0
          END ) late_KTU,
       sum( CASE 
              WHEN interval_work = 2 
                   AND valid_work = 1
              THEN fact
              ELSE 0
          END ) late_Other,
       sum( CASE 
              WHEN interval_work = 2 
                   and type_work not IN (111, 222) 
                   AND valid_work = 0
              THEN fact
              ELSE 0
          END ) late_Unvalid_work,   
       sum( CASE 
              WHEN interval_work = 3 
              THEN fact
              ELSE 0
          END ) work_without_mark_day,
        sum( CASE 
              WHEN interval_work = 4 
              THEN fact
              ELSE 0
          END ) work_without_mark_nigth,
         sum( CASE 
              WHEN interval_work = 5 
                   AND type_work = 111
                   and op_day = 0 
              THEN fact
              ELSE 0
          END ) norm_work_birzha,
        sum( CASE 
              WHEN interval_work = 5 
                   AND  type_work = 222
                   and op_day = 0
              THEN fact
              ELSE 0
          END ) norm_work_KTU,
         sum( CASE 
              WHEN interval_work = 5 
                   AND  type_work = 333
                   AND valid_work = 1
                   and op_day = 0
              THEN fact
              ELSE 0
          END ) norm_work_Other,
          sum( CASE 
               WHEN interval_work = 5 
                   AND valid_work = 0
                   and type_work NOT IN (111, 222)
                   and op_day = 0
               THEN fact
               ELSE 0
          END ) norm_work_Unvalid,
          sum( CASE 
               WHEN valid_work = 1
                   and op_day = 1
               THEN fact
               ELSE 0
          END ) before_OP_start_day_valid,
          sum( CASE 
               WHEN valid_work = 0
                   and op_day = 1
               THEN fact
               ELSE 0
          END ) before_OP_end_day_unvalid,
          sum( CASE 
               WHEN valid_work = 1
                   and op_day = 2
               THEN fact
               ELSE 0
          END ) after_OP_start_day_valid,
          sum( CASE 
               WHEN valid_work = 0
                   and op_day = 2
               THEN fact
               ELSE 0
          END ) after_OP_end_day_unvalid,
          user_demande           
       
FROM tab_interval 
GROUP BY --to_char(ZP_OP_DAY, 'MM'),
         --to_char(operating_day, 'MM'),
         tab_num, 
         title_short, 
         full_name, 
         dept_user,
         DEPT_WORK,
         id_work, 
         work_name,
         measure_unit,
         work_unit,
         user_demande 
),

tab_pers_itog_zp AS (
    SELECT id_lm, tb, sum(cnt) as CNZ_ZP, sum(money) as money_ZP
    FROM plan_pers_zp_out_itog a
    WHERE oper_date >= To_date(:date_start, 'dd.mm.yyyy')
         AND oper_date <= To_date(:date_end, 'dd.mm.yyyy')
    GROUP BY id_lm, tb
),

RESULT_TABLE AS (
    SELECT  -- t.DT,
             t.tab_num, 
             t.title_short, 
             t.full_name, 
             t.dept_user,
             t.DEPT_WORK,
             t.id_work, 
             t.work_name,
             t.measure_unit,
             t.work_unit,
             pidpwt.name_work_zp as PAYMENT_GENERAL, --наименование ЗП общий
             t.early_birzha,
             t.early_KTU,
             t.early_Other,
             t.early_Unvalid,   
             t.late_birzha,
             t.late_KTU,
             t.late_Other,
             t.late_Unvalid_work,   
             t.work_without_mark_day,
             t.work_without_mark_nigth,
             t.norm_work_birzha,
             t.norm_work_KTU,
             t.norm_work_Other,
             t.norm_work_Unvalid,
             --t.user_demande,
             ( early_Other
                 + late_Other
                 + norm_work_Other ) as sum_valid,
             ( late_Unvalid_work 
                 + norm_work_Unvalid                 
                 + work_without_mark_day
                 + work_without_mark_nigth
                 + early_Unvalid 
                 + early_birzha
                 + early_KTU
                 + late_birzha
                 + late_KTU
                 + norm_work_birzha
                 + norm_work_KTU) as sum_unvalid,
                 PPN.normo,
                 PPN.money,
            (   norm_work_Unvalid                 
                 + norm_work_birzha
                 + norm_work_KTU
                 + norm_work_Other
                 + before_OP_start_day_valid
                 + before_OP_end_day_unvalid
                 + after_OP_start_day_valid
                 + after_OP_end_day_unvalid
                 + work_without_mark_day
                 + work_without_mark_nigth) as NormWork,
         /*    (   norm_work_Unvalid                 
                 + norm_work_birzha
                 + norm_work_KTU
                 + norm_work_Other
                 + before_OP_start_day_valid
                 + before_OP_end_day_unvalid
                 + after_OP_start_day_valid
                 + after_OP_end_day_unvalid
                 + work_without_mark_day
                 + work_without_mark_nigth) * PPN.money as MoneyForNormWork, */
            ( late_Unvalid_work
                 + late_Other
                 + late_birzha
                 + late_KTU                
                 + early_Unvalid 
                 + early_birzha
                 + early_KTU
                 + early_Other
              ) AS OtherWork, -- не нужно
            /* ( late_Unvalid_work
                 + late_Other
                 + late_birzha
                 + late_KTU                
                 + early_Unvalid 
                 + early_birzha
                 + early_KTU
                 + early_Other
              ) * PPN.money as MoneyForOtherWork, */
             ( early_Other
                  + early_Unvalid 
                  + early_birzha
                  + early_KTU
                  + norm_work_Other 
                  + norm_work_Unvalid
                  + norm_work_birzha
                  + norm_work_KTU 
                  + late_Other
                  + late_Unvalid_work 
                  + late_birzha
                  + late_KTU               
                  + work_without_mark_day
                  + work_without_mark_nigth
                  + before_OP_start_day_valid
                  + before_OP_end_day_unvalid
                  + after_OP_start_day_valid
                  + after_OP_end_day_unvalid
               ) AS AllWork, -- все работы
            /* ( early_Other
                  + early_Unvalid 
                  + early_birzha
                  + early_KTU
                  + norm_work_Other 
                  + norm_work_Unvalid
                  + norm_work_birzha
                  + norm_work_KTU 
                  + late_Other
                  + late_Unvalid_work 
                  + late_birzha
                  + late_KTU               
                  + work_without_mark_day
                  + work_without_mark_nigth
                  + before_OP_start_day_valid
                  + before_OP_end_day_unvalid
                  + after_OP_start_day_valid
                  + after_OP_end_day_unvalid
               ) * PPN.money as MoneyForAllWork, */
               gen_pay.CNZ_ZP, -- расчет зп общий - кол-во
               gen_pay.MONEY_ZP, --расчет зп общий - сумма
               gen_pay.tb,
               before_OP_start_day_valid,
               before_OP_end_day_unvalid,
               after_OP_start_day_valid,
               after_OP_end_day_unvalid,
              ( early_Other
                 + norm_work_Other 
                 + late_Other
              )  as PLN_CNT, -- все работы
           /*   ( early_Other
                 + norm_work_Other 
                 + late_Other
              )  * PPN.money as PLN_AMOUNT_MONEY, */
              ( early_Unvalid 
                  + work_without_mark_day
                  + work_without_mark_nigth
                  + norm_work_Unvalid
                  + norm_work_birzha
                  + norm_work_KTU 
                  - early_Other
                  - late_Other
                  + before_OP_start_day_valid
                  + before_OP_end_day_unvalid
                  + after_OP_start_day_valid
                  + after_OP_end_day_unvalid
               ) as difference_CNT
          /*     ( early_Unvalid 
                  + work_without_mark_day
                  + work_without_mark_nigth
                  + norm_work_Unvalid
                  + norm_work_birzha
                  + norm_work_KTU 
                  - early_Other
                  - late_Other
                  + before_OP_start_day_valid
                  + before_OP_end_day_unvalid
                  + after_OP_start_day_valid
                  + after_OP_end_day_unvalid
               ) * PPN.money as difference_CNT_AMOUNT_MONEY */
                 
    FROM tab_result t
         LEFT JOIN plan_pers_normo PPN
                  ON PPN.id_work = t.id_work
         LEFT JOIN pers_itog_dt_plan_work_temp pidpwt
                  ON t.id_work = pidpwt.num_work_res_plan  
         LEFT JOIN tab_pers_itog_zp gen_pay
                   ON gen_pay.tb = pidpwt.work_zp_all 
                      AND gen_pay.id_lm = t.user_demande
 --ORDER BY gen_pay.tb
)

SELECT  tab_num, 
        title_short, 
        full_name, 
        dept_user,
        DEPT_WORK,
        id_work, 
        work_name,
        measure_unit,
        work_unit,
        PAYMENT_GENERAL, --наименование ЗП общий
        early_birzha,
        early_KTU,
        early_Other,
        early_Unvalid,   
        late_birzha,
        late_KTU,
        late_Other,
        late_Unvalid_work,   
        work_without_mark_day,
        work_without_mark_nigth,
        norm_work_birzha,
        norm_work_KTU,
        norm_work_Other,
        norm_work_Unvalid,
        sum_valid,
        sum_unvalid,
        normo,
        money,
        NormWork,
       (NormWork * money) as MoneyForNormWork,
        OtherWork, -- не нужно
       (OtherWork * money) as MoneyForOtherWork, -- не нужно
        AllWork, -- все работы
       (AllWork * money) as MoneyForAllWork, -- все работы 
        CNZ_ZP, -- расчет зп общий - кол-во
        MONEY_ZP, --расчет зп общий - сумма
        TB, -- из расчет_зп общий
        before_OP_start_day_valid,
        before_OP_end_day_unvalid,
        after_OP_start_day_valid,
        after_OP_end_day_unvalid,
        PLN_CNT,
        (PLN_CNT * money) as PLN_AMOUNT_MONEY,
        difference_CNT,
        (difference_CNT * money) as difference_CNT_AMOUNT_MONEY,
        (CNZ_ZP - NORMWORK) as DIFF_CNT_ZP_GENERAL,
        (CNZ_ZP - NORMWORK) * money as  DIFF_AMOUNT_MONEY_ZP_GENERAL
FROM RESULT_TABLE

