SELECT col.id_colis,
       lp.id_produit AS idpr,
       SUM (lc.qte_deja_preparee) AS qte,
       lp.etat_stock_n3 AS stock_status
 FROM  colis col
          -- ON eop.id_op = col.id_op
          --   AND eop.id_societe = col.id_societe
          --   AND eop.num_op = col.num_op
       INNER JOIN colis_date cd
               ON cd.id_colis = col.id_colis
  
       INNER JOIN ligne_colisee lc
               ON col.id_colis = lc.id_colis
                 -- AND lc.num_op = eop.num_op
                 -- AND lc.id_op = eop.id_op 
       INNER JOIN ligne_op lp
               ON-- eop.id_op = lp.id_op
                 -- AND eop.num_op = lp.num_op
                   lp.id_produit = lc.id_produit
                  AND lp.num_op = lc.num_op
                  AND lc.id_ligne = lp.id_ligne
                  AND lc.id_societe = lp.id_societe
WHERE 1 = 1                   
      AND cd.type_date = 500
      and lp.etat_stock_n3 = 444                    

GROUP BY col.id_colis,
         lp.id_produit,
         lp.etat_stock_n3
ORDER BY id_colis
