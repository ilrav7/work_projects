SELECT  EMP.lib_region,
        EMP.id_emplacement,
        CFG.libelle,
        CASE
           WHEN SUP.contenu_entete_multi = 1 
             OR lower(CFG.libelle) like '%unlimit%'
             OR (aul.num_algo_colisage in (5, 6, 31, 32) and EMP.id_emballage = 'BAG') 
           THEN NULL
           ELSE AE.id_produit
        END id_produit, 
         
        CASE
            WHEN SUP.contenu_entete_multi = 1 
                 OR lower(CFG.libelle) like '%unlimit%'
                 OR (aul.num_algo_colisage in (5, 6, 31, 32) and EMP.id_emballage = 'BAG') 
            THEN NULL
            ELSE num_algo_colisage
        END num_algo_colisage, 
        
         CASE
         WHEN SUP.contenu_entete_multi = 1 
                 OR lower(CFG.libelle) like '%unlimit%'
                 OR (aul.num_algo_colisage in (5, 6, 31, 32) and EMP.id_emballage = 'BAG') 
            THEN NULL
            ELSE AE.ext_trade_mark
        END ext_trade_mark,
        
        --DECODE(lower(AE.ext_trade_mark), 'o`stin', 'OST', 'funday', 'FD', 'SM') as BIZNES,
        
        C.etat_stock_n3,
        
        CASE 
            WHEN aul.num_algo_colisage in (3, 4, 11, 12, 13, 14, 21, 36, 37, 41, 42, 45, 46, 47, 48, 49, 50) 
            THEN EMP.id_emballage
            ELSE NULL
        END id_emballage,
        
        CASE 
           WHEN aul.num_algo_colisage in (1, 2, 3, 4, 11, 12, 13, 14, 21, 36, 37, 39, 41, 42, 45, 46, 47, 48, 49, 50)
           THEN 'PAL3'
           ELSE EMP.id_emballage
        END TYPE_SIZE,
        CASE 
           WHEN (C.ext_id_support_orig is not null and C.ext_id_support_orig <> ' ' )
           THEN C.ext_id_support_orig
           ELSE C.id_support
        END id_support, 
        C.id_support as "KOR/PAL",
        count(--DISTINCT
              CASE
                  WHEN lower(CFG.libelle) like '%unlimit%'
                  THEN NULL
                  ELSE SUP.id_support
              END ) as CNT_KOR,
             
       sum(C.QTE) as qte,
       SUP.contenu_entete_multi as MIX
        
 FROM contenu C
     INNER JOIN support SUP 
             ON SUP.id_support = C.id_support
     INNER JOIN emplacement EMP 
             ON EMP.id_emplacement = SUP.id_emplacement
     INNER JOIN article_e AE 
             ON AE.id_produit = C.id_produit
      LEFT JOIN article_ul AUL
             ON AE.id_produit = AUL.id_produit
                AND AUL.id_ul = C.id_ul 
      LEFT JOIN cfg_alveole CFG
             ON EMP.num_alveole = CFG.num_alveole                 
WHERE 1 = 1 

GROUP BY  EMP.lib_region,
          EMP.id_emplacement,
          CFG.libelle,
          CASE
            WHEN SUP.contenu_entete_multi = 1 
                 OR lower(CFG.libelle) like '%unlimit%'
                 OR (aul.num_algo_colisage in (5, 6, 31, 32) and EMP.id_emballage = 'BAG') 
            THEN NULL
            ELSE AE.id_produit
          END,  
          CASE
             WHEN SUP.contenu_entete_multi = 1 
                  OR lower(CFG.libelle) like '%unlimit%'
                  OR (aul.num_algo_colisage in (5, 6, 31, 32) and EMP.id_emballage = 'BAG') 
            THEN NULL
            ELSE num_algo_colisage
          END, 
        
          CASE
              WHEN SUP.contenu_entete_multi = 1 
                   OR lower(CFG.libelle) like '%unlimit%'
                   OR (aul.num_algo_colisage in (5, 6, 31, 32) and EMP.id_emballage = 'BAG') 
              THEN NULL
              ELSE AE.ext_trade_mark
          END,
        --DECODE(lower(AE.ext_trade_mark), 'o`stin', 'OST', 'funday', 'FD', 'SM'),
         C.etat_stock_n3, 
         CASE 
            WHEN aul.num_algo_colisage in (3, 4, 11, 12, 13, 14, 21, 36, 37, 41, 42, 45, 46, 47, 48, 49, 50) 
            THEN EMP.id_emballage
            ELSE NULL
        END ,
         CASE 
            WHEN (C.ext_id_support_orig is not null and C.ext_id_support_orig <> ' ' )
            THEN C.ext_id_support_orig
            ELSE C.id_support
        END , 
        CASE 
           WHEN aul.num_algo_colisage in (1, 2, 3, 4, 11, 12, 13, 14, 21, 36, 37, 39, 41, 42, 45, 46, 47, 48, 49, 50)
           THEN 'PAL3'
           ELSE EMP.id_emballage
        END ,
        C.id_support,
        SUP.contenu_entete_multi


