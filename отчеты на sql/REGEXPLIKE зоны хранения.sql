Select ae.id_produit, 
        ae.ext_product_family, 
        ae.ext_product_sub_family,
        ae.ext_trade_mark,
        SUM (CASE 

              WHEN c.etat_stock_n3 = 0 

              Then c.qte

              Else 0

              END) QTE_et_0,
        SUM(CASE 

              WHEN c.etat_stock_n3 = 444 

              Then c.qte

              Else 0

           END ) QTE_et_444,
           
         case 
         
         When ( REGEXP_LIKE(lib_region, '^A[0-9]') 
                  OR 
                    REGEXP_LIKE(lib_region, '^B[0-9]')  
                     OR 
                      REGEXP_LIKE(lib_region, '^K[0-9]') )     
         THen 'KX'
         When  REGEXP_LIKE(lib_region, '^S[0-9]')
         THEN 'Палетное хранение'
         Else 'Пикинг'
         END  zon_group,
         lib_region
         
From contenu c
    Inner Join support sup On sup.id_support = c.id_support
    Inner Join emplacement emp On emp.id_emplacement = sup.id_emplacement 
      Inner Join article_e ae 
             ON ae.id_produit = c.id_produit

     

Where  (
         lower(ext_product_family) like '%обувь%'
         OR
         lower(ext_product_family) like '%инвентарь%'
        )        
       and c.etat_stock_n3 in (0, 444)             

Group By ae.id_produit, 
          ae.ext_product_family, 
          ae.ext_product_sub_family,
          ae.ext_trade_mark,
          lib_region

ORDER BY ae.ext_product_family
