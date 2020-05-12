
Select  TRUNC(eod.date_operation) as DT, 
        eop.id_op as ID_OP, 
        eopc.id_client as ID_CLIENT, 
        DECODE(lower(ae.ext_trade_mark),'o`stin','OSTIN','funday','FUNDAY','SM') as FIRMA, 
        SUM (lop.qte_preparee) as QTE,
        DECODE(ext_cross_dock, 0, 'Нет', 1, 'Транзит', 2, 'Отборка', 3, 'Да (SR КД)', 4, 'Да (КД EEM/не EEM)', 5, 'Да (КД КГТ)') as Cross_Dock
        
From entete_op_syn eop
     INNER JOIN ligne_op_syn lop ON eop.id_op = lop.id_op
     INNER JOIN entete_op_date_syn eod ON eod.num_op = eop.num_op
     INNER JOIN entete_op_client_syn eopc On 
                eop.id_client = eopc.id_client and eop.id_op = eopc.id_op
     INNER JOIN article_e ae ON ae.id_produit = lop.id_produit           
                
Where trunc(eod.date_operation) >= TO_DATE ('01.03.2019', 'DD.MM.YYYY')
      and trunc(eod.date_operation) < TO_DATE ('01.09.2019', 'DD.MM.YYYY')
      AND ( (eop.type_op = 4 AND mode_expedition = 'INT') 
            OR (eop.type_op = 0 AND eopc.id_op_client != ' '))        
       AND eod.TYPE_DATE = 500
             
GROUP BY TRUNC(eod.date_operation), eop.id_op, eopc.id_client, DECODE(lower(ae.ext_trade_mark),'o`stin','OSTIN','funday','FUNDAY','SM'), 
         DECODE(ext_cross_dock, 0, 'Нет', 1, 'Транзит', 2, 'Отборка', 3, 'Да (SR КД)', 4, 'Да (КД EEM/не EEM)', 5, 'Да (КД КГТ)')
Order By TRUNC(eod.date_operation), eop.id_op, eopc.id_client
