
WITH initial_data AS (
-- 500 подготовлен
-- 454 на проверку
-- 456 проверен
SELECT trunc(cd.date_operation) as DT,
       cd.type_date,
       lc.qte_deja_preparee,
       col.id_colis,
       eop.id_client,
       lc.id_produit,
       eop.id_societe
       
FROM entete_op_syn eop
   INNER JOIN colis_syn col
            ON eop.id_op = col.id_op 
               AND eop.id_societe = col.id_societe 
   INNER JOIN colis_date_syn cd
           ON cd.id_colis = col.id_colis
   INNER JOIN ligne_colisee_syn lc
           ON col.id_colis = lc.id_colis
           AND lc.id_op = eop.id_op
           AND lc.id_societe = eop.id_societe
   INNER JOIN article_e ae 
           ON ae.id_produit = lc.id_produit
              AND eop.id_societe = ae.id_societe        
  
WHERE 1 = 1 
      AND lower(ae.ext_trade_mark) like '%o_stin%'  
      AND cd.type_date in (454, 456, 500)  --для облегчения нагрузки подсчета  
      AND TRUNC (cd.date_operation) >=  To_Date('01.01.2020', 'dd.mm.yyyy')             
      AND TRUNC (cd.date_operation) <= To_Date('05.01.2020', 'dd.mm.yyyy')                                
UNION
SELECT trunc(cd.date_operation) as DT,
       cd.type_date,
       lc.qte_deja_preparee,
       col.id_colis,
       eop.id_client,
       lc.id_produit,
       eop.id_societe
 
FROM entete_op eop
   INNER JOIN colis col
            ON eop.id_op = col.id_op 
               AND eop.id_societe = col.id_societe 
   INNER JOIN colis_date cd
           ON cd.id_colis = col.id_colis
   INNER JOIN ligne_colisee lc
           ON col.id_colis = lc.id_colis
           AND lc.id_op = eop.id_op
           AND lc.id_societe = eop.id_societe
   INNER JOIN article_e ae 
           ON ae.id_produit = lc.id_produit
              AND eop.id_societe = ae.id_societe

WHERE 1 = 1 
      AND lower(ae.ext_trade_mark) like '%o_stin%'  
      AND cd.type_date in (454, 456, 500)  --для облегчения нагрузки подсчета  
       AND TRUNC (cd.date_operation) >=  To_Date('01.01.2020', 'dd.mm.yyyy')             
      AND TRUNC (cd.date_operation) <= To_Date('05.01.2020', 'dd.mm.yyyy')                                
      
),

result_tab as (

SELECT DT,
       SUM(CASE
             WHEN type_date = 500 
             THEN qte_deja_preparee
           END ) AS all_qte_500,
       COUNT( distinct 
               CASE
                 WHEN type_date = 500 
                 THEN  id_colis
               END ) all_cnt_500,
       SUM(CASE
             WHEN type_date = 500
                  and id_client not in (437, 347, 607, 837, 617, 6127, 847, 857, 8007, 387, 397, 627, 307) 
             THEN qte_deja_preparee
           END ) AS qte_500,
       COUNT( distinct 
               CASE
                 WHEN type_date = 500
                      and id_client not in (437, 347, 607, 837, 617, 6127, 847, 857, 8007, 387, 397, 627, 307) 
                 THEN  id_colis
               END ) cnt_500,            
       SUM(CASE
             WHEN type_date = 454 
                  and id_client not in (437, 347, 607, 837, 617, 6127, 847, 857, 8007, 387, 397, 627, 307)
             THEN qte_deja_preparee
           END) qte_454,
       COUNT( distinct 
               CASE
                 WHEN type_date = 454 
                      and id_client not in (437, 347, 607, 837, 617, 6127, 847, 857, 8007, 387, 397, 627, 307)
                 THEN  id_colis
               END) cnt_454,    
       SUM(CASE
             WHEN type_date = 456 
                  and id_client not in (437, 347, 607, 837, 617, 6127, 847, 857, 8007, 387, 397, 627, 307)
             THEN qte_deja_preparee
           END) qte_456,
       COUNT( distinct 
               CASE
                 WHEN type_date = 456
                      and id_client not in (437, 347, 607, 837, 617, 6127, 847, 857, 8007, 387, 397, 627, 307) 
                 THEN id_colis
               END ) cnt_456
 From initial_data INIT                           
 GROUP BY DT             
)

Select  dt,
        to_char (dt, 'ww') as WEEK,
        all_cnt_500,
        all_qte_500,
        cnt_500, -- подготовлен
        qte_500,
        cnt_454, -- на проверку
        qte_454,
        cnt_456,  --проверен
        qte_456,
        ROUND((cnt_456 / DECODE(cnt_500, 0, 1, cnt_500)) *100, 2)  as actual_kor_check, -- "короб факт.проверено",
        ROUND((qte_456 / DECODE(qte_500, 0, 1, qte_500)) *100, 2) as actual_qte_check, -- "ед. факт.проверено",
        ROUND((cnt_456 / DECODE(all_cnt_500, 0, 1, all_cnt_500)) *100, 2) as all_kor_check, -- as "короб всего.проверено",
        ROUND((qte_456 / DECODE(all_qte_500, 0, 1, all_qte_500)) *100, 2) as all_qte_check --"ед. всего.проверено"
From result_tab

