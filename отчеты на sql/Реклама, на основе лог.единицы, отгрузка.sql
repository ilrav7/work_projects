SELECT TRUNC (lcd.date_operation) AS dt,
         eop.id_op AS id_op,
         lc.id_produit,
         eop.id_client AS id_client,
         SUM (lc.qte_deja_preparee) AS qte,
         DECODE (ext_cross_dock,
                 0, 'Нет',
                 1, 'Транзит',
                 2, 'Отборка',
                 3, 'Да (SR КД)',
                 4, 'Да (КД EEM/не EEM)',
                 5, 'Да (КД КГТ)')
             AS cross_dock,
         COUNT (*) cnt_l,
          lc.id_ul
    FROM entete_op_syn eop
         INNER JOIN ligne_colisee_syn lc
             ON (eop.num_op = lc.num_op AND eop.id_societe = lc.id_societe)
         INNER JOIN colis_date_syn lcd
             ON (lc.num_op = lcd.num_op AND lc.id_societe = lcd.id_societe AND lc.id_colis = lcd.id_colis)
         Inner join colis_syn col On     
             col.id_colis = lcd.id_colis
         
   WHERE lcd.date_operation >= TO_DATE ('01.03.2019', 'DD.MM.YYYY')
     AND lcd.date_operation <= TO_DATE ('31.08.2019', 'DD.MM.YYYY') + 1
     AND lcd.type_date = 2000
     AND col.num_algo_colisage IN (15, 16, 17, 18, 22, 23)
    --AND eop.id_op = 'M81156539L2'
GROUP BY TRUNC (lcd.date_operation),
         eop.id_op,
         eop.id_client,
         DECODE (ext_cross_dock,
                 0, 'Нет',
                 1, 'Транзит',
                 2, 'Отборка',
                 3, 'Да (SR КД)',
                 4, 'Да (КД EEM/не EEM)',
                 5, 'Да (КД КГТ)'),
         lc.id_produit,
        lc.id_ul
ORDER BY TRUNC (lcd.date_operation), eop.id_client
