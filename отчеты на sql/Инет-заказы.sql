with tab as (
select type_date, date_operation, c.*, eop.* from colis c
inner join colis_date cd On c.id_colis = cd.id_colis
inner join entete_op_syn eop On  eop.id_op = c.id_op 
             AND eop.id_societe = c.id_societe 
             AND eop.num_op = c.num_op
where 1=1--user_demande = 16951
and type_date = 1300
AND cd.date_operation >   
                       TO_DATE('01:04:2020 08:00:00', 'DD.MM.YYYY HH24:MI:SS') 
             AND cd.date_operation <=                                         
                       TO_DATE('21:04:2020 08:00:00', 'DD.MM.YYYY HH24:MI:SS')

union all
select type_date, date_operation, c.*, eop.* from colis_syn c
inner join colis_date_syn cd On c.id_colis = cd.id_colis
inner join entete_op_syn eop On -- eop.id_op = c.id_op 
             eop.id_societe = c.id_societe 
             AND eop.num_op = c.num_op
where 1=1--user_demande = 16951
and type_date = 1300
AND cd.date_operation >   
                       TO_DATE('01:04:2020 08:00:00', 'DD.MM.YYYY HH24:MI:SS') 
             AND cd.date_operation <=                                         
                       TO_DATE('21:04:2020 08:00:00', 'DD.MM.YYYY HH24:MI:SS')

)

select distinct CASE                                              
      WHEN (type_op = 4                              
            AND DECODE(ext_id_grouping_support, ' ', NULL, ext_id_grouping_support) is not NULL)    
      THEN ext_id_grouping_support   
      ELSE id_colis                                  
  END id,
  ext_id_grouping_support
from tab t
where type_op = 4
and ext_id_grouping_support != ' '



