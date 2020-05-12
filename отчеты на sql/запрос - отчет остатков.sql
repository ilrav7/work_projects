WITH tab AS (
    SELECT ae.id_produit id_produit, 
    ae.ext_product_family ext_product_family, 
    ae.ext_product_sub_family ext_product_sub_family,
    ae.ext_trade_mark ext_trade_mark,
    ae.id_societe id_societe

    FROM article_e ae 
        INNER JOIN skier.test_ilba_t1 temp
                ON temp.id_op = ae.id_produit 
                   AND ae.id_societe = '00099' 
)

SELECT 
        CASE 
        WHEN (ext_id_support_orig is not null and ext_id_support_orig <> ' ' )
        THEN ext_id_support_orig
        ELSE c.id_support
        END id_support,
        emp.id_emplacement,
        c.etat_stock_n3,
        c.id_produit,
        sum(c.qte)

FROM contenu c
    INNER JOIN support sup ON sup.id_support = c.id_support
    INNER JOIN emplacement emp ON emp.id_emplacement = sup.id_emplacement 
    INNER JOIN tab ae ON ae.id_produit = c.id_produit 
                      AND ae.id_societe = c.id_societe
                     
GROUP BY 
        CASE 
          WHEN (ext_id_support_orig is not null and ext_id_support_orig <> ' ' )
          THEN ext_id_support_orig
          ELSE c.id_support
        END,
        emp.id_emplacement,
        c.id_produit,
        c.etat_stock_n3
order by  id_emplacement, id_produit
