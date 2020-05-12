Select emp.lib_region, 
       emp.id_emballage,
       DECODE(lower(ae.ext_trade_mark),
               'o`stin','OSTIN',
               'funday','FUNDAY',
               'SM') as FIRMA, 
       count(distinct con.id_support),
       null
       
From contenu con
    Inner Join support sup On sup.id_support = con.id_support
    Inner Join emplacement emp On emp.id_emplacement = sup.id_emplacement 
    Inner Join article_e ae ON ae.id_produit = con.id_produit
    --Inner Join article_ul aul ON aul.id_produit = con.id_produit
    
Where 
     (   
        REGEXP_LIKE(lib_region, '^A[0-9]') 
        OR 
        REGEXP_LIKE(lib_region, '^B[0-9]') 
        OR 
        REGEXP_LIKE(lib_region, '^K[0-9]')
        OR 
        REGEXP_LIKE(lib_region, '^N[0-9]')
     )
   AND lib_region NOT IN ('N5')  
   AND con.etat_stock_n3 != 444 -- L3 = 0 
  -- AND aul.id_ul = 'LU2' -- L3 = 0 
   
Group By emp.lib_region,   
                    emp.id_emballage,
                   DECODE(lower(ae.ext_trade_mark),
                                   'o`stin','OSTIN',
                                  'funday','FUNDAY',
                                 'SM')
         
UNION

Select emp.lib_region, 
       aul.id_emballage,
       DECODE(lower(ae.ext_trade_mark),
               'o`stin','OSTIN',
               'funday','FUNDAY',
               'SM') as FIRMA,
               
       count(con.id_support) AS CNT_KOR,
       count(distinct con.id_support) AS CNT_PAL
      
From contenu con
    Inner Join support sup ON sup.id_support = con.id_support
    Inner Join emplacement emp ON emp.id_emplacement = sup.id_emplacement 
    Inner Join article_e ae ON ae.id_produit = con.id_produit
    INNER Join article_ul aul ON ae.id_produit = aul.id_produit
                                AND aul.id_ul = 'BX' 
    
Where 
     (    
        REGEXP_LIKE(lib_region, '^S[0-9]')
     ) 
   AND con.etat_stock_n3 != 444 -- L3 = 0
  
   
Group By emp.lib_region, 
       aul.id_emballage,
       DECODE(lower(ae.ext_trade_mark),
               'o`stin','OSTIN',
               'funday','FUNDAY',
               'SM')
               
Order By lib_region
