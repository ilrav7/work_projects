Select
      ppd.plan_start_date,
      ppd.plan_end_date,
      ppd.tab_num,
      ppd.description,
      ROUND((ppd.time_go_out - ppd.time_go_in)*24, 2) as fact_T,
      (ppd.plan_end_date -ppd.plan_start_date)*24*60
       - ROUND((ppd.time_go_out - ppd.time_go_in)*24, 2)*60 as DIFF_min,
      
      CASE          
          When 
              ((ppd.plan_end_date -ppd.plan_start_date)*24*60 - 
                  ROUND((ppd.time_go_out - ppd.time_go_in)*24, 2)*60) < -60
          THEN '< -60 мин'
          
          When 
              ((ppd.plan_end_date -ppd.plan_start_date)*24*60 - 
                  ROUND((ppd.time_go_out - ppd.time_go_in)*24, 2)*60) < -30
          THEN '< -30 мин'
          
          When 
              (ppd.plan_end_date -ppd.plan_start_date)*24*60 - 
                  ROUND((ppd.time_go_out - ppd.time_go_in)*24, 2)*60  < -15
          THEN '< -15 мин'
           
          When 
              ((ppd.plan_end_date -ppd.plan_start_date)*24*60 - 
                  ROUND((ppd.time_go_out - ppd.time_go_in)*24, 2)*60) > 60
          THEN '> 60 мин'
          
          When 
              ((ppd.plan_end_date -ppd.plan_start_date)*24*60 - 
                  ROUND((ppd.time_go_out - ppd.time_go_in)*24, 2)*60) > 30
          THEN '> 30 мин'
          
          When 
              (ppd.plan_end_date -ppd.plan_start_date)*24*60 - 
                  ROUND((ppd.time_go_out - ppd.time_go_in)*24, 2)*60  > 15
          THEN '> 15 мин'
      
          Else 'в пределах'
      End condition
         
From pers_pers_day ppd 
     INNER JOIN plan_pers_table ppt 
                ON ppd.tab_num = ppt.tab_num and ppt.day_id = ppd.plan_day
Where ppt.id_unit = 6 --ПВ                