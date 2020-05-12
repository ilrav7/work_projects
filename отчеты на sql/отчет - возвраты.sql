WITH tab AS (

SELECT TRUNC (h.date_evenement) AS DT,
       h.id_produit AS IDPR,
       SUM (h.qte_destination) AS QTE,
       
       MAX (ae.ext_trade_mark) tm,
       MAX (ae.ext_collection) collec,
       MAX (DECODE (algo.num_algo_colisage,
                5, 'ÊÃÒ',
                6, 'ÊÃÒ',
                15, 'ĞÅÊË',
                16, 'ĞÅÊË',
                17, 'ÒÎ',
                18, 'ÒÎ',
                19, 'ÇÏ',
                20, 'ÇÏ',
                22, 'Ñòğ.Ì.',
                23, 'Ñòğ.Ì.',
                27, 'ÂÑ-ÌÃÒ',
                    'ÌÃÒ') ) AS TP,
       MAX (algo.emb) emb,
       MAX (algo.luqte) luqte,
       h.etat_stock_n3_final,
       lr.ext_shop_id
FROM historique_syn h
INNER JOIN  article_e ae  
           ON h.id_produit = ae.id_produit
            AND h.id_societe = ae.id_societe
LEFT JOIN info_reception_syn ir 
          ON h.num_reception = ir.num_reception
LEFT JOIN ligne_reception_syn lr 
          ON lr.num_lr = ir.num_lr
LEFT JOIN ( SELECT au2.id_produit idpr,
                   NVL (
                         MIN (
                               DECODE (SUBSTR (id_ul, 1, 2),
                                       'BX', au2.qte)), 1) luqte,
                         MAX (au2.num_algo_colisage) num_algo_colisage,
                         MAX (au2.id_emballage) emb
             FROM article_ul au2
             GROUP BY au2.id_produit
            ) algo ON ae.id_produit = algo.idpr
            
WHERE h.num_mouvement IN (103, 158)
                           --AND TRUNC (h.date_evenement) = TRUNC (SYSDATE) - 1
        AND trunc(h.date_evenement) >= To_date('01.10.2019')
        AND trunc(h.date_evenement) < To_date('02.10.2019')

GROUP BY TRUNC (h.date_evenement),
         h.id_produit,
         h.etat_stock_n3_final,
         lr.ext_shop_id   
)

Select * From tab