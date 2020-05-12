SELECT TYPE,
       DT,
       IDPR,
       t.QTE,
       QTE_SET,
        ----- BEGIN CNTCOR 
       CASE 
            WHEN aul.id_ul = 'BX'    
            THEN  ROUND (SUM (t.QTE) / 
                                DECODE(MAX(aul.QTE),
                                NULL, 1,
                                0, 1,
                                max(aul.QTE) 
                                ), 6
                            )
            ELSE SUM (t.QTE)                            
       END CNTCOR,           
       ----- END CNTCOR  
       TM,
       TP,
       CD,
       STOCK_STATUS,
       null as CLIENT,
       null as CLIENTTYPE,
       (Select longueur*largeur*hauteur
        From article_ul
        Where id_ul = 'LU2'
             and id_produit = IDPR) * 0.000000001 * SUM(t.QTE) AS VOLUME


  FROM ( 
------- begin tab
      SELECT 
           DECODE (h.num_mouvement,
                   102, 'priemka',
                   1020, 'priemka',
                   1021, 'priemka',
                   'kro') AS TYPE,   
           TRUNC (h.date_evenement) AS DT,
           h.id_produit AS IDPR,
           SUM (h.ecart_qte) AS qte,
           SUM(h.ecart_qte* NVL(cs.set_qte, 1)) AS QTE_SET,
           MAX (ae.ext_trade_mark) AS TM,
           MAX(DECODE (num_algo_colisage,
                    5, 'КГТ',
                    6, 'КГТ',
                    15, 'РЕКЛ',
                    16, 'РЕКЛ',
                    17, 'ТО',
                    18, 'ТО',
                    19, 'ЗП',
                    20, 'ЗП',
                    22, 'Стр.М.',
                    23, 'Стр.М.',
                    27, 'ВС-МГТ',
                        'МГТ')) AS TP,
            etat_stock_n3_final as STOCK_STATUS,            
            DECODE (h.id_position_destination, '0050.X.1', 'CD',
                                               '0900.CD', 'CD',
                                               '0901.CDSR', 'CD',
                                               '0902.CDOCK', 'XD',
                                               '0903.CDOV', 'XD')  AS CD,
            ae.id_societe as AE_ID_SOC                                   
                                               
          FROM historique_syn h
         --      LEFT JOIN mission_arch_syn ma 
          --                        ON h.num_mission_lm = ma.num_mission_lm
           --                          AND h.num_mission = ma.num_mission 
               INNER JOIN article_e ae 
                                    ON h.id_produit = ae.id_produit
                                     AND h.id_societe = ae.id_societe
               LEFT JOIN reception.caselot cs 
                         ON ae.id_produit = cs.id_caselot                                           
               LEFT JOIN (SELECT au2.id_produit AS IDPR,
                                 NVL (
                                       MIN (
                                             DECODE (SUBSTR (id_ul, 1, 2),
                                                     'BX', au2.qte)),
                                                      1) as LUQTE,
                                  MAX (au2.num_algo_colisage) num_algo_colisage,
                                  MAX (au2.id_emballage) emb,
                                  au2.id_societe
                          FROM article_ul au2
                          GROUP BY au2.id_produit,
                                   au2.id_societe) 
                     algo ON algo.IDPR = ae.id_produit and algo.id_societe = ae.id_societe  
                  
          WHERE 1 = 1
                  AND h.num_mouvement IN
                                        (100, -- коррекц.приемки(вход)
                                         101, -- инвентариз(вход)
                                         102, -- приемка(вход)
                                         104, -- перекодировка (вход)
                                         154, -- коррекц. иниц(вход)
                                         159, -- иниц(вход)
                                         200, -- коррекц. приемки(выход)
                                         201, -- инвентаризация(выход)
                                         202, -- внешний выход
                                         204, -- перекодировка(выход)
                                         254, -- корекц. иниц(выход)
                                         259, -- иниц(выход)
                                         1020, -- кросс-док(вход)
                                         1021, -- внешний приход
                                         1038) --кросс-докинг(выход)
                                         
                  AND TRUNC (h.date_evenement) >= TO_DATE('01.10.2019', 'dd.mm.yyyy') -- sysdate 
                  AND TRUNC (h.date_evenement) < TO_DATE('02.10.2019', 'dd.mm.yyyy')  -- sysdate --h.date_evenement
         
          GROUP BY 
                   TRUNC (h.date_evenement),
                   h.id_produit,
                   h.num_mouvement, 
                   DECODE (h.id_position_destination, 
                           '0050.X.1', 'CD',
                           '0900.CD', 'CD',
                           '0901.CDSR', 'CD',
                           '0902.CDOCK', 'XD',
                           '0903.CDOV', 'XD'),
                   etat_stock_n3_final,
                   ae.id_societe           
) t LEFT JOIN article_ul aul 
           ON  t.IDPR = aul.id_produit  AND aul.id_ul = 'BX' AND AE_ID_SOC = aul.id_societe
----  end tab

GROUP BY  TYPE,
          DT,
          IDPR,
          t.QTE,
          QTE_SET,
          TM,
          TP,
          STOCK_STATUS,
          CD,
          aul.id_ul
          
        

