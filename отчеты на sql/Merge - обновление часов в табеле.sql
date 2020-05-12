MERGE INTO plan_pers_table ppt
     USING (     
         SELECT b.day_id, b.tab_num, b.id_title, b.id_unit,  b.id_dept, b.new_value
            FROM (
                SELECT a.day_id, a.tab_num, a.id_title, a.id_unit, 
                       MAX(a.time_exec) as DT, a.id_dept
                FROM plan_pers_table_log a

                WHERE 1 = 1
                      AND day_id >= To_date('01.12.2019', 'dd.mm.yyyy')
                      AND day_id < To_date('11.12.2019', 'dd.mm.yyyy')

                GROUP BY a.day_id, 
                         a.tab_num, 
                         a.id_title, 
                         a.id_unit,  
                         a.id_dept
            ) a INNER JOIN plan_pers_table_log b
                             ON a.day_id = b.day_id
                                AND a.tab_num = b.tab_num
                                AND a.id_title = b.id_title
                                AND a.id_unit = b.id_unit
                                AND a.id_dept = b.id_dept 
                                AND b.time_exec = a.DT
            GROUP by b.day_id, 
                     b.tab_num, 
                     b.id_title, 
                     b.id_unit,  
                     b.id_dept, 
                     b.new_value, 
                     b.time_exec                
) tab_log
        
                ON (
                      ppt.day_id = tab_log.day_id
                      AND ppt.tab_num = tab_log.tab_num
                      AND ppt.id_title = tab_log.id_title
                      AND ppt.id_unit = tab_log.id_unit
                      AND ppt.id_dept = tab_log.id_dept
                    )
        WHEN MATCHED THEN
            UPDATE SET
                ppt.hours = tab_log.new_value
        
        
