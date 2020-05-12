WITH initial_data AS (
-- 500 подготовлен
-- 454 на проверку
-- 456 проверен
SELECT eod.date_operation as DT,
     --  cd.type_date,
       lc.qte_deja_preparee,
       col.id_colis,
       eop.id_client,
       lc.id_produit,
       eop.id_societe,
       col.num_algo_colisage,
       type_op,
        NUM_VAGUE,
        EOP.ID_OP
       
FROM entete_op_syn eop
   INNER JOIN entete_op_date_syn eod  
           ON eod.num_op = eop.num_op
               AND eop.id_societe = eod.id_societe
   INNER JOIN colis_syn col
            ON eop.id_op = col.id_op 
               AND eop.id_societe = col.id_societe 
--   INNER JOIN colis_date_syn cd
  --         ON cd.id_colis = col.id_colis
   INNER JOIN ligne_colisee_syn lc
           ON col.id_colis = lc.id_colis
           AND lc.id_op = eop.id_op
           AND lc.id_societe = eop.id_societe
   INNER JOIN article_e ae 
           ON ae.id_produit = lc.id_produit
              AND eop.id_societe = ae.id_societe        
  
WHERE 1 = 1 
      AND lower(ae.ext_trade_mark) like '%o_stin%'  
      AND eod.type_date in ( 500)  --для облегчения нагрузки подсчета 
--        and cd.type_date in 1150 
      AND eod.date_operation >=  To_date('04:24:24 02.02.2020', 'hh24:mi:ss dd.mm.yyyy')             
      AND eod.date_operation <= To_date('09:56:36 03.02.2020', 'hh24:mi:ss dd.mm.yyyy')     
      
                                   
UNION
SELECT eod.date_operation as DT,
     --  cd.type_date,
       lc.qte_deja_preparee,
       col.id_colis,
       eop.id_client,
       lc.id_produit,
       eop.id_societe,
       col.num_algo_colisage,
       type_op,
        NUM_VAGUE,
        EOP.ID_OP
 
FROM entete_op eop
   INNER JOIN entete_op_date eod  
           ON eod.num_op = eop.num_op
               AND eop.id_societe = eod.id_societe 
   INNER JOIN colis col
            ON eop.id_op = col.id_op 
               AND eop.id_societe = col.id_societe 
 --  INNER JOIN colis_date cd
   --        ON cd.id_colis = col.id_colis
   INNER JOIN ligne_colisee lc
           ON col.id_colis = lc.id_colis
           AND lc.id_op = eop.id_op
           AND lc.id_societe = eop.id_societe
   INNER JOIN article_e ae 
           ON ae.id_produit = lc.id_produit
              AND eop.id_societe = ae.id_societe

WHERE 1 = 1 
      AND lower(ae.ext_trade_mark) like '%o_stin%'  
       AND eod.type_date in ( 500)  --для облегчения нагрузки подсчета  
  --     and cd.type_date in 1150
     AND eod.date_operation >=  To_date('04:24:24 02.02.2020', 'hh24:mi:ss dd.mm.yyyy')             
      AND eod.date_operation <= To_date('09:56:36 03.02.2020', 'hh24:mi:ss dd.mm.yyyy')                                  
      
)

Select  COUNT(distinct(id_colis))
From initial_data INIT
WHERE 1 = 1 

AND NUM_VAGUE IN ('29086',
'29374',
'29185',
'29744',
'28959',
'29085',
'29044',
'29056',
'29186',
'29055',
'29083',
'29084',
'29045',
'29192',
'29191',
'29082',
'29184',
'29907',
'29929',
'29370',
'29371',
'29908',
'29741',
'29930',
'29368',
'29373',
'29740',
'29372',
'29742',
'29187',
'29909',
'29743',
'29931',
'29369') 
AND num_algo_colisage in (37, 45, 4) 
   -- and TYPE_OP in (1,4)   
   
  -- GROUP BY ID_OP                        

