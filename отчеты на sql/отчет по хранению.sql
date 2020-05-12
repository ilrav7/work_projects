with tab as (
 SELECT c.id_support,
        sup.id_emballage,
        c.id_produit,
        c.qte,
        aul.qte,
        sup.id_emplacement,
        aul.id_ul,
        CASE
          WHEN sup.id_emballage = 'BAG' THEN NULL
          ELSE CEIL (c.qte / aul.qte)
        END   cnt_kor
        /*,
        CASE 
            WHEN sup.id_emballage = 'PAL3' OR sup.id_emballage = 'BAG'
            THEN 1
            WHEN sup.id_emballage = 'PAL2'
            THEN 1.5
            WHEN sup.id_emballage = 'PALT' or sup.id_emballage = 'PAL1'
            THEN 3
         END koef    */             
  FROM contenu c
       INNER JOIN support sup 
                  ON sup.id_support = c.id_support
       LEFT JOIN article_ul aul
                  ON c.id_produit = aul.id_produit
                   AND aul.id_ul = 'BX'
                    AND aul.id_societe = c.id_societe
       WHERE 1 = 1
              and sup.id_emballage IN ('BAG', 'PAL1', 'PAL2', 'PAL3', 'PALT')
                             
      GROUP BY c.id_support,
               c.id_produit,
               aul.qte,
               c.qte,
               sup.id_emballage,
               sup.id_emplacement,
               aul.id_ul   
 ),

tab2 as (
     Select           
         id_emballage AS emballage,
         CASE 
             WHEN id_emballage = 'BAG'
             THEN count(distinct id_emplacement)
             ELSE count(distinct id_support)
         END VSEGO_PALLET,
         CASE 
             WHEN id_emballage = 'BAG'
             THEN
               count ( distinct  
                 CASE 
                 When id_ul = 'BX' 
                 Then id_support 
                 END) 
             ELSE SUM(cnt_kor) 
             END CNT_KOR_BX,
         count ( distinct  
                 CASE 
                 When id_ul is NULL
                 Then id_support 
                 END) CNT_LU_NOT_BX,
           CASE 
            WHEN id_emballage = 'PAL3' OR id_emballage = 'BAG'
            THEN 1
            WHEN id_emballage = 'PAL2'
            THEN 1.5
            WHEN id_emballage = 'PALT' or id_emballage = 'PAL1'
            THEN 3
         END koef    
     From tab
     Group by id_emballage
 )
   
 select emballage,
        VSEGO_PALLET,
        koef, 
        VSEGO_PALLET*koef AS pallet_K_PAL3,
        CNT_KOR_BX,
        CNT_LU_NOT_BX,
        ROUND(CNT_KOR_BX / VSEGO_PALLET, 4) as Plotn  -- плотность хранения
       
from tab2
