SELECT   us, u.description, daynight, MAX(dt), 
COUNT(DISTINCT 
        CASE 
            WHEN (type_op = 4                        -- !!!!!!      от 21.04.2020
            AND DECODE(pal, ' ', NULL, pal) is not NULL)  
            THEN pal 
            ELSE id_colis
        END) cnt, 
ROUND(SUM(volume)/1000000000, 2) volume, ROUND(SUM(poids_total_reel)/1000, 2) poids_total_reel, 
         CASE
            WHEN COUNT(DISTINCT 
                        CASE 
                            WHEN (type_op = 4                        -- !!!!!!      от 21.04.2020
                            AND DECODE(pal, ' ', NULL, pal) is not NULL)  
                            THEN pal 
                            ELSE id_colis
                        END) <= 17100
               THEN COUNT(DISTINCT 
                            CASE 
                                WHEN (type_op = 4                        -- !!!!!!      от 21.04.2020
                                AND DECODE(pal, ' ', NULL, pal) is not NULL)  
                                THEN pal 
                                ELSE id_colis
                            END) * 1.02
            WHEN COUNT(DISTINCT 
                        CASE 
                            WHEN (type_op = 4                        -- !!!!!!      от 21.04.2020
                            AND DECODE(pal, ' ', NULL, pal) is not NULL)  
                            THEN pal 
                            ELSE id_colis
                        END) > 17100
               THEN 17100 * 1.02 + (COUNT(DISTINCT 
                                            CASE 
                                                WHEN (type_op = 4                        -- !!!!!!      от 21.04.2020
                                                AND DECODE(pal, ' ', NULL, pal) is not NULL)  
                                                THEN pal 
                                                ELSE id_colis
                                            END) - 17100) * 0.82
         END plata,
      0.34 pricecoli 
    FROM (SELECT cd.user_demande us,
                 CASE    
                    WHEN TO_CHAR(cd.date_operation, 'HH24:MI') >
                                                             '08:00'
                    AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '20:00' 
                       THEN 'День'
                    WHEN(    TO_CHAR(cd.date_operation, 'HH24:MI') >= '00:00' 
                         AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '08:00'
                        )  
                     OR (    TO_CHAR(cd.date_operation, 'HH24:MI') > '20:00' 
                         AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '24:00' 
                        )  
                       THEN 'Ночь' 
                 END daynight, 
                 CASE     
                    WHEN TO_CHAR(cd.date_operation, 'HH24:MI') >  
                                                               '08:00' 
                    AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '20:00' 
                       THEN '0'                                      
                    WHEN TO_CHAR(cd.date_operation, 'HH24:MI') >= '00:00'
                    AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '08:00' 
                       THEN '1'                                         
                    WHEN TO_CHAR(cd.date_operation, 'HH24:MI') > '20:00' 
                    AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '24:00' 
                       THEN '0'                                         
                END befaft,                                             
                   TRUNC(cd.date_operation)                             
                 - CASE                                                 
                      WHEN TO_CHAR(cd.date_operation, 'HH24:MI') > '08:00' 
                      AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '20:00' 
                         THEN '0'                                         
                      WHEN TO_CHAR(cd.date_operation, 'HH24:MI') >= '00:00'
                      AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '08:00' 
                         THEN '1'                                          
                      WHEN TO_CHAR(cd.date_operation, 'HH24:MI') > '20:00'
                      AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '24:00'
                         THEN '0'                           
                   END dt, c.volume, c.poids_total_reel,
                   eop.type_op,
                   c.id_colis,
                   c.ext_id_grouping_support as pal
            FROM colis_syn c, 
                 colis_date_syn cd,
                 entete_op_syn eop 
           WHERE c.id_colis = cd.id_colis           
             AND cd.type_date = 1300            
             AND cd.date_operation >            
                       TO_DATE('21:04:2020 08:00:00', 'DD.MM.YYYY HH24:MI:SS') 
             AND cd.date_operation <=                                 
                       TO_DATE('22:04:2020 08:00:00', 'DD.MM.YYYY HH24:MI:SS')
             AND eop.id_op = c.id_op --
             AND eop.id_societe = c.id_societe --
             AND eop.num_op = c.num_op --             
          UNION ALL                                               
          SELECT cd.user_demande us,                              
                 CASE                                              
                    WHEN TO_CHAR(cd.date_operation, 'HH24:MI') >   
                                                             '08:00' 
                    AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '20:00' 
                       THEN 'День'                                    
                    WHEN(    TO_CHAR(cd.date_operation, 'HH24:MI') >= '00:00'
                         AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '08:00'  
                        )                                                     
                     OR (    TO_CHAR(cd.date_operation, 'HH24:MI') > '20:00'  
                         AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '24:00' 
                        )                                                    
                       THEN 'Ночь'                                           
                 END daynight,                                               
                 CASE                                                        
                    WHEN TO_CHAR(cd.date_operation, 'HH24:MI') >             
                                                               '08:00'    
                    AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '20:00'  
                       THEN '0'                                          
                    WHEN TO_CHAR(cd.date_operation, 'HH24:MI') >= '00:00'
                    AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '08:00' 
                       THEN '1'                                          
                    WHEN TO_CHAR(cd.date_operation, 'HH24:MI') > '20:00' 
                    AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '24:00' 
                       THEN '0'                                         
                 END befaft,                                            
                   TRUNC(cd.date_operation)                             
                 - CASE                                                  
                      WHEN TO_CHAR(cd.date_operation, 'HH24:MI') > '08:00'
                      AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '20:00' 
                         THEN '0'                                         
                      WHEN TO_CHAR(cd.date_operation, 'HH24:MI') >= '00:00'
                      AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '08:00' 
                         THEN '1'                                         
                      WHEN TO_CHAR(cd.date_operation, 'HH24:MI') > '20:00' 
                      AND TO_CHAR(cd.date_operation, 'HH24:MI') <= '24:00'
                         THEN '0'                                     
                   END dt, c.volume, c.poids_total_reel,
                   eop.type_op,
                   c.id_colis,
                   c.ext_id_grouping_support as pal
            FROM colis c, 
                 colis_date cd,
                 entete_op eop   
           WHERE c.id_colis = cd.id_colis  
             AND cd.type_date = 1300    
             AND cd.date_operation >   
                       TO_DATE('21:04:2020 08:00:00', 'DD.MM.YYYY HH24:MI:SS') 
             AND cd.date_operation <=                                         
                       TO_DATE('22:04:2020 08:00:00', 'DD.MM.YYYY HH24:MI:SS')
             AND eop.id_op = c.id_op --
             AND eop.id_societe = c.id_societe --
             AND eop.num_op = c.num_op --
       ),
         user_user u    
   WHERE us = u.num_user   
GROUP BY daynight, us, u.description
ORDER BY daynight, cnt DESC 

