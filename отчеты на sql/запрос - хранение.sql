with article_ae_W15 as (
SELECT * 
FROM CFG_FAMILLE cfg
     INNER JOIN article_famille af 
             ON cfg.num_famille = af.num_famille
WHERE 1 = 1 --af.id_produit = '77951108'  
and af. num_famille = 126 --w15 stock N6
),

tab2 as (
Select  c.id_produit
       
From contenu c
    Inner Join support sup On sup.id_support = c.id_support
    Inner Join emplacement emp On emp.id_emplacement = sup.id_emplacement 
    Inner Join article_ae_W15 ae ON ae.id_produit = c.id_produit
     

Group By c.id_produit
)

Select id_produit 
From article_ae_W15
Where id_produit not in (
     Select id_produit From tab2
     )
