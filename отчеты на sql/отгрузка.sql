SELECT trunc(cd.date_operation),
       col.ext_id_grouping_support,
       count(col.id_colis)
       
FROM s_lm_entete_op eop
     INNER JOIN s_lm_colis col
                ON eop.id_op = col.id_op
                   AND eop.id_societe = col.id_societe
                   AND eop.num_op = col.num_op
     INNER JOIN s_lm_colis_date cd
                ON cd.id_colis = col.id_colis
                   AND eop.num_op = col.num_op
                   AND eop.id_op = col.id_op
                   AND eop.id_societe = cd.id_societe  
WHERE type_op = 4 
      AND cd.date_operation >= to_date('11.03.2020', 'dd.mm.yyyy')              
      AND cd.type_date = 1150
      AND col.ext_id_grouping_support is not null
      AND col.ext_id_grouping_support <> ' '  
--and eop.id_op = 'M87932412L0'
/*and  (ext_id_grouping_support =  '039999902091502485'
       or ext_id_grouping_support = '039999902076724574') */
GROUP BY trunc(cd.date_operation),
         col.ext_id_grouping_support
UNION 
SELECT trunc(cd.date_operation),
       col.ext_id_grouping_support,
       count(col.id_colis)
       
FROM sm.entete_op_syn eop
     INNER JOIN sm.colis_syn col
                ON eop.id_op = col.id_op
                   AND eop.id_societe = col.id_societe
                   AND eop.num_op = col.num_op
     INNER JOIN sm.colis_date_syn cd
                ON cd.id_colis = col.id_colis
                   AND eop.num_op = col.num_op
                   AND eop.id_op = col.id_op
                   AND eop.id_societe = cd.id_societe  
WHERE type_op = 4 
      AND cd.date_operation >= to_date('11.03.2020', 'dd.mm.yyyy')              
      AND cd.type_date = 1150  
      AND col.ext_id_grouping_support is not null
      AND col.ext_id_grouping_support <> ' '
--and eop.id_op = 'M87932412L0'
/*and  (ext_id_grouping_support =  '039999902091502485'
      or ext_id_grouping_support = '039999902076724574') */
GROUP BY trunc(cd.date_operation),
         col.ext_id_grouping_support

