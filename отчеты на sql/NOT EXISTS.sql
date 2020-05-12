WITH tab1 AS (
Select  eod.date_operation,
        eop.id_op as ID_OP,
        DECODE(SUBSTR(eop.ID_OP,0,3),'OS-','OSTIN','FD-','FUNDAY','SM') as FIRMA ,
        lp.etat_stock_n3,
        col.id_emballage,
        col.id_colis,
        lop.id_produit,
        lop.qte_preparee as QTE,
        eop.id_client
        
From entete_op_syn eop
     INNER JOIN entete_op_date_syn eod ON eod.num_op = eop.num_op
     INNER JOIN colis_syn col On  eop.id_op = col.id_op
    -- Inner Join colis_date_syn  cd ON cd.id_colis = col.id_colis           
     INNER JOIN ligne_colisee_syn lop ON col.id_colis = lop.id_colis
     INNER JOIN ligne_op_syn lp On eop.id_op = lp.id_op
    -- INNER JOIN article_e ae ON ae.id_produit = lop.id_produit
    
Where  eod.date_operation >=  TO_DATE('01.03.2019')
       AND eod.date_operation < TO_date('01.09.2019')
       AND eod.TYPE_DATE = 2000 -- отправлен
     --  AND cd.type_date = 2000 -- отгружен
       --AND eop.ext_order_type = 0  -- MGT
       AND eop.id_client in (337, 397, 857) 
     --  and M81133117L1
GROUP BY  eod.date_operation,
          eop.id_op, 
          DECODE(SUBSTR(eop.ID_OP,0,3),'OS-','OSTIN','FD-','FUNDAY','SM') ,
          lp.etat_stock_n3,
          col.id_emballage,
          col.id_colis,
          lop.qte_preparee,
          lop.id_produit,
          eop.id_client
),

tab2 AS(
Select  eod.date_operation,
        eop.id_op as ID_OP,
        DECODE(SUBSTR(eop.ID_OP,0,3),'OS-','OSTIN','FD-','FUNDAY','SM') as FIRMA ,
        lp.etat_stock_n3,
        col.id_emballage,
        col.id_colis,
        lop.id_produit,
        lop.qte_preparee as QTE,
        eop.id_client
        
From entete_op_syn eop
     INNER JOIN entete_op_date_syn eod ON eod.num_op = eop.num_op
     INNER JOIN colis_syn col On  eop.id_op = col.id_op
     Inner Join colis_date_syn  cd ON cd.id_colis = col.id_colis           
     INNER JOIN ligne_colisee_syn lop ON col.id_colis = lop.id_colis
     INNER JOIN ligne_op_syn lp On eop.id_op = lp.id_op
    -- INNER JOIN article_e ae ON ae.id_produit = lop.id_produit
    
Where  eod.date_operation >=  TO_DATE('01.03.2019')
       AND eod.date_operation < TO_date('01.09.2019')
       AND eod.TYPE_DATE = 2000 -- отправлен
       AND cd.type_date = 2000 -- отгружен
       --AND eop.ext_order_type = 0  -- MGT
       AND eop.id_client in (337, 397, 857) 
     --  and M81133117L1
GROUP BY  eod.date_operation,
          eop.id_op, 
          DECODE(SUBSTR(eop.ID_OP,0,3),'OS-','OSTIN','FD-','FUNDAY','SM') ,
          lp.etat_stock_n3,
          col.id_emballage,
          col.id_colis,
          lop.qte_preparee,
          lop.id_produit,
          eop.id_client
)

Select id_colis From tab1 t1
Where not exists (
select t2.id_colis From tab2 t2
Where t2.id_colis = t1.id_colis)


