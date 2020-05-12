SELECT TYPE,
       DT,
       IDPR,
       sum(QTE) as QTE,
       sum(QTE_SET) as QTE_SET,
       sum(CNTCOR) as CNTCOR,
       TM,
       TP,
       STOCK_STATUS,
       CD,
       CLIENT,

    ------------------------------ BEGIN CLIENTTYPE-------------------------------------------
      ( SELECT  T.comment_1
        FROM skier.CLIENT_RANGES@RC_DPCP.WORLD T
        Where (SUBSTR_CLIENTTYPE) >= range_min and (SUBSTR_CLIENTTYPE) <= range_max)  AS CLIENTTYPE ,
    ----------------------------- END CLIENTTYPE----------------------------------------
      sum(VOLUME) as VOLUME
    FROM (
    ----------------------------- BEGIN SELECT вложенный запрос ----------------------------------
     SELECT
                   'vozvrat'  TYPE,
                   TRUNC (h.date_evenement) AS DT,
                   h.id_produit AS IDPR,
                   SUM (h.qte_destination) AS QTE,
                   SUM (h.qte_destination*NVL(cs.set_qte, 1)) AS QTE_SET,
                    ------------------------------- BEGIN CNTCOR -------------------------------
                    CASE
                        WHEN aul.id_ul = 'BX'
                        THEN  ROUND (SUM (h.qte_destination) /
                                            DECODE(MAX(aul.QTE),
                                            NULL, 1,
                                            0, 1,
                                            max(aul.QTE)
                                            ), 6
                                        )
                        ELSE SUM (h.qte_destination)
                   END CNTCOR,
                  ------------------------------ END CNTCOR ------------------------------------------
                   MAX (ae.ext_trade_mark) TM,
                   MAX(DECODE (algo.num_algo_colisage,
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
                   h.etat_stock_n3_final AS STOCK_STATUS,
                   DECODE (h.id_position_destination, '0050.X.1', 'CD',
                                                           '0900.CD', 'CD',
                                                           '0901.CDSR', 'CD',
                                                           '0902.CDOCK', 'XD',
                                                           '0903.CDOV', 'XD')  AS CD,

    ------------------------------- BEGIN VOLUME----------------------------------------
                   (Select longueur*largeur*hauteur
                    From article_ul@SM1.WORLD
                    Where id_ul = 'LU2'
                         AND id_produit = h.id_produit) * 0.000000001 * SUM(h.qte_destination) AS VOLUME,
    ------------------------------------------- END VOLUME   -----------------------------------------------
    ------------------------- BEGIN SUBSTR_CLIENT - используется для преобразования номера клиета ----------
                   CASE
                        WHEN length(lr.ext_shop_id) > 7
                             AND ( substr(lr.ext_shop_id, 0, 6) = '007771'
                                   OR substr(lr.ext_shop_id, 0, 4) = '7771')
                        THEN '7771'
                        WHEN length(lr.ext_shop_id) > 7
                             AND ( substr(lr.ext_shop_id, 0, 6) = '007772'
                                   OR substr(lr.ext_shop_id, 0, 4) = '7772')
                        THEN '7772'
                        WHEN length(lr.ext_shop_id) > 7
                             AND (substr(lr.ext_shop_id, 0, 6) = '007773'
                                  OR substr(lr.ext_shop_id, 0, 4) = '7773')
                        THEN '7773'
                        WHEN length(lr.ext_shop_id) > 7
                             AND ( substr(lr.ext_shop_id, 0, 6) = '007775'
                                   OR substr(lr.ext_shop_id, 0, 4) = '7775')
                        THEN '7775'
                        WHEN length(lr.ext_shop_id) > 7
                             AND ( substr(lr.ext_shop_id, 0, 6) = '007777'
                                   OR substr(lr.ext_shop_id, 0, 4) = '7777')
                        THEN '7777'
                        WHEN length(lr.ext_shop_id) > 7
                             AND ( substr(lr.ext_shop_id, 0, 6) = '007711'
                                   OR substr(lr.ext_shop_id, 0, 4) = '7711')
                        THEN '7711'
                        WHEN length(lr.ext_shop_id) > 7
                             AND ( substr(lr.ext_shop_id, 0, 6) = '007713'
                                   OR substr(lr.ext_shop_id, 0, 4) = '7713' )
                        THEN '7713'
                   ELSE DECODE (lr.ext_shop_id,
                                ' ', ir.id_fournisseur,
                                '', ir.id_fournisseur,
                                NULL, ir.id_fournisseur,
                                lr.ext_shop_id)
                   END  SUBSTR_CLIENTTYPE,
    ---------------------------- END SUNSTR_CLIENT - используется для преобразования номера клиета---------------------------
                   DECODE (lr.ext_shop_id,
                           ' ', ir.id_fournisseur,
                           '', ir.id_fournisseur,
                           NULL, ir.id_fournisseur,
                           lr.ext_shop_id) AS CLIENT
    ---------------------------- BEGIN FROM вложенного запроса   -------------------------------
               FROM historique_syn@SM1.WORLD h
                   INNER JOIN  article_e@SM1.WORLD ae
                           ON h.id_produit = ae.id_produit
                           AND h.id_societe = ae.id_societe
                   LEFT JOIN info_reception@SM1.WORLD ir
                          ON h.num_reception = ir.num_reception
                             and h.id_societe = ir.id_societe
                   LEFT JOIN ligne_reception@SM1.WORLD lr
                          ON lr.num_lr = ir.num_lr
                             and lr.id_societe = ir.id_societe
                   LEFT JOIN ( SELECT au2.id_produit idpr,
                                      NVL (
                                            MIN (
                                                  DECODE (SUBSTR (id_ul, 1, 2),
                                                          'BX', au2.qte)), 1) luqte,
                                             MAX (au2.num_algo_colisage) num_algo_colisage,
                                             MAX (au2.id_emballage) emb,
                                             au2.id_societe
                                FROM article_ul@SM1.WORLD au2
                                GROUP BY au2.id_produit,
                                         au2.id_societe
                               ) algo ON ae.id_produit = algo.idpr and ae.id_societe = algo.id_societe
                    LEFT JOIN caselot cs
                           ON ae.id_produit = cs.id_caselot
                    LEFT JOIN article_ul@SM1.WORLD aul
                           ON  ae.id_produit = aul.id_produit  AND aul.id_ul = 'BX' AND ae.id_societe = aul.id_societe
    --------------------------- END FROM вложенного запроса -----------------------------------------
                WHERE h.num_mouvement IN (103, 158) -- 103 - возврат клиента, 158 - неожиданный возврат
                                               --AND TRUNC (h.date_evenement) = TRUNC (SYSDATE) - 1
                       AND trunc(h.date_evenement) >= trunc(sysdate - 1)
                        AND trunc(h.date_evenement) <  trunc(sysdate)
                     
    --------------------------- BEGIN GROUP BY вложенного запроса -----------------------------------
                GROUP BY TRUNC(h.date_evenement),
                             h.id_produit,
                             h.etat_stock_n3_final,
                             h.id_position_destination,
                    CASE
                        WHEN length(lr.ext_shop_id) > 7
                             AND ( substr(lr.ext_shop_id, 0, 6) = '007771'
                                   OR substr(lr.ext_shop_id, 0, 4) = '7771')
                        THEN '7771'
                        WHEN length(lr.ext_shop_id) > 7
                             AND ( substr(lr.ext_shop_id, 0, 6) = '007772'
                                   OR substr(lr.ext_shop_id, 0, 4) = '7772')
                        THEN '7772'
                        WHEN length(lr.ext_shop_id) > 7
                             AND (substr(lr.ext_shop_id, 0, 6) = '007773'
                                  OR substr(lr.ext_shop_id, 0, 4) = '7773')
                        THEN '7773'
                        WHEN length(lr.ext_shop_id) > 7
                             AND ( substr(lr.ext_shop_id, 0, 6) = '007775'
                                   OR substr(lr.ext_shop_id, 0, 4) = '7775')
                        THEN '7775'
                        WHEN length(lr.ext_shop_id) > 7
                             AND ( substr(lr.ext_shop_id, 0, 6) = '007777'
                                   OR substr(lr.ext_shop_id, 0, 4) = '7777')
                        THEN '7777'
                        WHEN length(lr.ext_shop_id) > 7
                             AND ( substr(lr.ext_shop_id, 0, 6) = '007711'
                                   OR substr(lr.ext_shop_id, 0, 4) = '7711')
                        THEN '7711'
                        WHEN length(lr.ext_shop_id) > 7
                             AND ( substr(lr.ext_shop_id, 0, 6) = '007713'
                                   OR substr(lr.ext_shop_id, 0, 4) = '7713' )
                        THEN '7713'

                     ELSE DECODE (lr.ext_shop_id,  ' ', ir.id_fournisseur,
                                                  '', ir.id_fournisseur,
                                                  NULL, ir.id_fournisseur,
                                lr.ext_shop_id)
                   END,
                   DECODE (lr.ext_shop_id,
                           ' ', ir.id_fournisseur,
                           '', ir.id_fournisseur,
                           NULL, ir.id_fournisseur,
                           lr.ext_shop_id),
                   aul.id_ul
--------------------------- END GROUP BY вложенного запроса    --------------------------
)

--Where idpr = 'A032Z2'

Group by TYPE,
         DT,
         IDPR,     
         TM,
         TP,
         STOCK_STATUS,
         CD,
         CLIENT,
         SUBSTR_CLIENTTYPE 
