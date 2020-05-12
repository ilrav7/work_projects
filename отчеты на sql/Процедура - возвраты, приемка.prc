CREATE OR REPLACE PROCEDURE add_priemka_otgr_vozv_ekat607 IS
    v_date_start     DATE;

    TYPE vozvrat_type IS TABLE OF rc.priemka_otgr_ekat@rc_dpcp.world%ROWTYPE
        INDEX BY PLS_INTEGER;
    TYPE priemka_type IS TABLE OF rc.priemka_otgr_ekat@rc_dpcp.world%ROWTYPE
        INDEX BY PLS_INTEGER;
    TYPE otgruzka_type IS TABLE OF rc.priemka_otgr_ekat@rc_dpcp.world%ROWTYPE
        INDEX BY PLS_INTEGER;

    vozvrat_array    vozvrat_type;
    priemka_array    priemka_type;
    otgruzka_array   otgruzka_type;

BEGIN
    v_date_start := SYSDATE;

    DELETE FROM client_ranges;
    COMMIT;
    INSERT INTO  client_ranges(id_range, range_min, range_max, comment_1, comment_2)
    SELECT * FROM skier.client_ranges@RC_DPCP.WORLD;
    COMMIT;

    WITH vozvrat AS
             (  -----------------------------------------ВОЗВРАТЫ ЗАПРОС --------------------------------------------
                SELECT TYPE,
                       dt,
                       idpr,
                       SUM (qte) AS qte,
                       SUM (qte_set) AS qte_set,
                       SUM (cntcor) AS cntcor,
                       tm,
                       tp,
                       stock_status,
                       cd,
                       client,
                       ------------------------------ BEGIN CLIENTTYPE-------------------------------------------
                      (SELECT comment_1
                       FROM client_ranges
                       WHERE decode(substr_clienttype, ' ', NULL, substr_clienttype) >= range_min
                             AND decode( substr_clienttype, ' ', NULL, substr_clienttype) <= range_max
                             AND ae_id_soc = '00099')
                     AS clienttype,
                       ----------------------------- END CLIENTTYPE----------------------------------------
                       SUM (volume) AS volume
                  FROM (  ----------------------------- BEGIN SELECT вложенный запрос ----------------------------------
                          SELECT 'vozvrat' TYPE,
                                 TRUNC (h.date_evenement) AS dt,
                                 h.id_produit AS idpr,
                                 SUM (h.qte_destination) AS qte,
                                 SUM (h.qte_destination * NVL (cs.set_qte, 1)) AS qte_set,
                                 ----------------------- BEGIN CNTCOR -------------------------------
                                 CASE
                                     WHEN aul.id_ul = 'BX' THEN
                                         ROUND (  SUM (h.qte_destination)
                                                / DECODE (MAX (aul.qte),  NULL, 1,  0, 1,  MAX (aul.qte)),
                                                6)
                                     ELSE
                                         SUM (h.qte_destination)
                                 END
                                     cntcor,
                                 -------------------- END CNTCOR ------------------------------------------
                                 MAX (ae.ext_trade_mark) tm,
                                 MAX (DECODE (algo.num_algo_colisage,
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
                                              'МГТ'))
                                     AS tp,
                                 h.etat_stock_n3_final AS stock_status,
                                 DECODE (h.id_position_destination,
                                         '0050.X.1', 'CD',
                                         '0900.CD', 'CD',
                                         '0901.CDSR', 'CD',
                                         '0902.CDOCK', 'XD',
                                         '0903.CDOV', 'XD')
                                     AS cd,
                                   ------------------------------- BEGIN VOLUME----------------------------------------
                                   (SELECT longueur * largeur * hauteur
                                      FROM SMEKG3.article_ul
                                     WHERE id_ul = 'LU2' AND id_produit = h.id_produit)
                                 * 0.000000001
                                 * SUM (h.qte_destination)
                                     AS volume,
                                 ------------------------------------------- END VOLUME   -----------------------------------------------
                                 ------------------------- BEGIN SUBSTR_CLIENT - используется для преобразования номера клиета ----------
                                 CASE
                                     WHEN LENGTH (lr.ext_shop_id) > 7
                                      AND (SUBSTR (lr.ext_shop_id, 0, 6) = '007771'
                                        OR SUBSTR (lr.ext_shop_id, 0, 4) = '7771') THEN
                                         '7771'
                                     WHEN LENGTH (lr.ext_shop_id) > 7
                                      AND (SUBSTR (lr.ext_shop_id, 0, 6) = '007772'
                                        OR SUBSTR (lr.ext_shop_id, 0, 4) = '7772') THEN
                                         '7772'
                                     WHEN LENGTH (lr.ext_shop_id) > 7
                                      AND (SUBSTR (lr.ext_shop_id, 0, 6) = '007773'
                                        OR SUBSTR (lr.ext_shop_id, 0, 4) = '7773') THEN
                                         '7773'
                                     WHEN LENGTH (lr.ext_shop_id) > 7
                                      AND (SUBSTR (lr.ext_shop_id, 0, 6) = '007775'
                                        OR SUBSTR (lr.ext_shop_id, 0, 4) = '7775') THEN
                                         '7775'
                                     WHEN LENGTH (lr.ext_shop_id) > 7
                                      AND (SUBSTR (lr.ext_shop_id, 0, 6) = '007777'
                                        OR SUBSTR (lr.ext_shop_id, 0, 4) = '7777') THEN
                                         '7777'
                                     WHEN LENGTH (lr.ext_shop_id) > 7
                                      AND (SUBSTR (lr.ext_shop_id, 0, 6) = '007711'
                                        OR SUBSTR (lr.ext_shop_id, 0, 4) = '7711') THEN
                                         '7711'
                                     WHEN LENGTH (lr.ext_shop_id) > 7
                                      AND (SUBSTR (lr.ext_shop_id, 0, 6) = '007713'
                                        OR SUBSTR (lr.ext_shop_id, 0, 4) = '7713') THEN
                                         '7713'
                                     ELSE
                                         DECODE (lr.ext_shop_id,
                                                 ' ', ir.id_fournisseur,
                                                 '', ir.id_fournisseur,
                                                 NULL, ir.id_fournisseur,
                                                 lr.ext_shop_id)
                                 END
                                     substr_clienttype,
                                 ---------------------------- END SUNSTR_CLIENT - используется для преобразования номера клиета---------------------------
                                 DECODE (lr.ext_shop_id,
                                         ' ', ir.id_fournisseur,
                                         '', ir.id_fournisseur,
                                         NULL, ir.id_fournisseur,
                                         lr.ext_shop_id)
                                     AS client,
                                     h.id_societe AS ae_id_soc
                            ---------------------------- BEGIN FROM вложенного запроса   -------------------------------
                            FROM SMEKG3.historique h
                                 INNER JOIN SMEKG3.article_e ae
                                     ON h.id_produit = ae.id_produit AND h.id_societe = ae.id_societe
                                 LEFT JOIN SMEKG3.info_reception ir
                                     ON h.num_reception = ir.num_reception AND h.id_societe = ir.id_societe
                                 LEFT JOIN SMEKG3.ligne_reception lr
                                     ON lr.num_lr = ir.num_lr AND lr.id_societe = ir.id_societe
                                 LEFT JOIN (  SELECT au2.id_produit idpr,
                                                     NVL (MIN (DECODE (SUBSTR (id_ul, 1, 2), 'BX', au2.qte)), 1) luqte,
                                                     MAX (au2.num_algo_colisage) num_algo_colisage,
                                                     MAX (au2.id_emballage) emb,
                                                     au2.id_societe
                                                FROM SMEKG3.article_ul au2
                                            GROUP BY au2.id_produit, au2.id_societe) algo
                                     ON ae.id_produit = algo.idpr AND ae.id_societe = algo.id_societe
                                 LEFT JOIN caselot cs
                                     ON ae.id_produit = cs.id_caselot
                                 LEFT JOIN SMEKG3.article_ul aul
                                     ON ae.id_produit = aul.id_produit
                                    AND aul.id_ul = 'BX'
                                    AND ae.id_societe = aul.id_societe
                           --------------------------- END FROM вложенного запроса -----------------------------------------
                           WHERE h.num_mouvement IN (103, 158)       -- 103 - возврат клиента, 158 - неожиданный возврат
                             AND TRUNC (h.date_evenement) >= TRUNC (SYSDATE - 1)
                             AND TRUNC (h.date_evenement) < TRUNC (SYSDATE)
                        --------------------------- BEGIN GROUP BY вложенного запроса -----------------------------------
                        GROUP BY TRUNC (h.date_evenement),
                                 h.id_produit,
                                 h.id_societe,
                                 h.etat_stock_n3_final,
                                 h.id_position_destination,
                                 CASE
                                     WHEN LENGTH (lr.ext_shop_id) > 7
                                      AND (SUBSTR (lr.ext_shop_id, 0, 6) = '007771'
                                        OR SUBSTR (lr.ext_shop_id, 0, 4) = '7771') THEN
                                         '7771'
                                     WHEN LENGTH (lr.ext_shop_id) > 7
                                      AND (SUBSTR (lr.ext_shop_id, 0, 6) = '007772'
                                        OR SUBSTR (lr.ext_shop_id, 0, 4) = '7772') THEN
                                         '7772'
                                     WHEN LENGTH (lr.ext_shop_id) > 7
                                      AND (SUBSTR (lr.ext_shop_id, 0, 6) = '007773'
                                        OR SUBSTR (lr.ext_shop_id, 0, 4) = '7773') THEN
                                         '7773'
                                     WHEN LENGTH (lr.ext_shop_id) > 7
                                      AND (SUBSTR (lr.ext_shop_id, 0, 6) = '007775'
                                        OR SUBSTR (lr.ext_shop_id, 0, 4) = '7775') THEN
                                         '7775'
                                     WHEN LENGTH (lr.ext_shop_id) > 7
                                      AND (SUBSTR (lr.ext_shop_id, 0, 6) = '007777'
                                        OR SUBSTR (lr.ext_shop_id, 0, 4) = '7777') THEN
                                         '7777'
                                     WHEN LENGTH (lr.ext_shop_id) > 7
                                      AND (SUBSTR (lr.ext_shop_id, 0, 6) = '007711'
                                        OR SUBSTR (lr.ext_shop_id, 0, 4) = '7711') THEN
                                         '7711'
                                     WHEN LENGTH (lr.ext_shop_id) > 7
                                      AND (SUBSTR (lr.ext_shop_id, 0, 6) = '007713'
                                        OR SUBSTR (lr.ext_shop_id, 0, 4) = '7713') THEN
                                         '7713'
                                     ELSE
                                         DECODE (lr.ext_shop_id,
                                                 ' ', ir.id_fournisseur,
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
              --------------------------- END FROM  --------------------------
              --WHERE idpr = 'RW80/85'
              GROUP BY TYPE,
                       dt,
                       idpr,
                       tm,
                       tp,
                       stock_status,
                       cd,
                       client,
                       decode( substr_clienttype, ' ', NULL, substr_clienttype),
                       ae_id_soc
   )

    ----------------------------------------- END WITH -----------------------------------------------------------------
    --______________________________________________COLLECTION VOZVRAT_ARRAY -----------------------------------------------------------------
    SELECT *
      BULK COLLECT INTO vozvrat_array
      FROM vozvrat;

    FOR i IN 1 .. vozvrat_array.COUNT LOOP
        MERGE INTO rc.priemka_otgr_ekat@rc_dpcp.world rc_add
             USING DUAL
                ON (rc_add.TYPE = vozvrat_array (i).TYPE
                AND rc_add.dt = vozvrat_array (i).dt
                AND rc_add.idpr = vozvrat_array (i).idpr
                AND NVL (rc_add.tm, '0') = NVL (vozvrat_array (i).tm, '0')
                AND rc_add.tp = vozvrat_array (i).tp
                AND rc_add.stock_status = vozvrat_array (i).stock_status
                AND NVL (rc_add.cd, '0') = NVL (vozvrat_array (i).cd, '0')
                AND NVL (rc_add.client, '0') = NVL (vozvrat_array (i).client, '0')
                AND NVL (rc_add.clienttype, '0') = NVL (vozvrat_array (i).clienttype, '0'))
        WHEN MATCHED THEN
            UPDATE SET
                rc_add.qte = vozvrat_array (i).qte,
                rc_add.qte_set = vozvrat_array (i).qte_set,
                rc_add.cntcor = vozvrat_array (i).cntcor,
                rc_add.volume = vozvrat_array (i).volume
                     WHERE rc_add.qte != vozvrat_array (i).qte
                       AND rc_add.qte_set != vozvrat_array (i).qte_set
                       AND rc_add.cntcor != vozvrat_array (i).cntcor
                       AND rc_add.volume != vozvrat_array (i).volume
        WHEN NOT MATCHED THEN
            INSERT     (rc_add.TYPE,
                        rc_add.dt,
                        rc_add.idpr,
                        rc_add.qte,
                        rc_add.qte_set,
                        rc_add.cntcor,
                        rc_add.tm,
                        rc_add.tp,
                        rc_add.stock_status,
                        rc_add.cd,
                        rc_add.client,
                        rc_add.clienttype,
                        rc_add.volume)
                VALUES (vozvrat_array (i).TYPE,
                        vozvrat_array (i).dt,
                        vozvrat_array (i).idpr,
                        vozvrat_array (i).qte,
                        vozvrat_array (i).qte_set,
                        vozvrat_array (i).cntcor,
                        vozvrat_array (i).tm,
                        vozvrat_array (i).tp,
                        vozvrat_array (i).stock_status,
                        vozvrat_array (i).cd,
                        vozvrat_array (i).client,
                        vozvrat_array (i).clienttype,
                        vozvrat_array (i).volume);
    END LOOP;

    INSERT INTO skier.job_entry@rc_dpcp.world (job_name,
                                               id_region,
                                               time_exec,
                                               time_start,
                                               table_name)
         VALUES ('add_p_o_vozvrat_ekat607', 607, SYSDATE, v_date_start, 'rc.priemka_otgr_ekat');

    COMMIT;
    --********************************************************************************************************************************
    -----------------------------------------ПРИЕМКА ЗАПРОС in WITH --------------------------------------------
    v_date_start := SYSDATE;

    WITH priemka AS
             (
               SELECT TYPE,
                       dt,
                       idpr,
                       sum(t.qte) as QTE,
                       sum(t.qte_set) as QTE_SET,
                       ----- BEGIN CNTCOR
                       CASE
                           WHEN aul.id_ul = 'BX' THEN
                               ROUND (SUM (t.qte) / DECODE (MAX (aul.qte),  NULL, 1,  0, 1,  MAX (aul.qte)), 6)
                           ELSE
                               SUM (t.qte)
                       END
                           cntcor,
                       ----- END CNTCOR
                       tm,
                       tp,
                       stock_status,
                       cd,
                       NULL AS client,
                       NULL AS clienttype,
                         (SELECT longueur * largeur * hauteur
                            FROM  SMEKG3.article_ul
                           WHERE id_ul = 'LU2' AND id_produit = idpr)
                       * 0.000000001
                       * SUM (t.qte)
                           AS volume
                  ------------------------------------BEGIN FROM ----------------------------------
                  FROM     (  SELECT DECODE (h.num_mouvement,  102, 'priemka',  1020, 'priemka',  1021, 'priemka',  'kro') AS TYPE,
                                     TRUNC (h.date_evenement) AS dt,
                                     h.id_produit AS idpr,
                                     SUM (h.ecart_qte) AS qte,
                                     SUM (h.ecart_qte * NVL (cs.set_qte, 1)) AS qte_set,
                                     MAX (ae.ext_trade_mark) AS tm,
                                     MAX (DECODE (num_algo_colisage,
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
                                                  'МГТ'))
                                         AS tp,
                                     etat_stock_n3_final AS stock_status,
                                     DECODE (h.id_position_destination,
                                             '0050.X.1', 'CD',
                                             '0900.CD', 'CD',
                                             '0901.CDSR', 'CD',
                                             '0902.CDOCK', 'XD',
                                             '0903.CDOV', 'XD')
                                         AS cd,
                                     ae.id_societe AS ae_id_soc
                                FROM  SMEKG3.historique h
                                     INNER JOIN  SMEKG3.article_e ae
                                         ON h.id_produit = ae.id_produit AND h.id_societe = ae.id_societe
                                     LEFT JOIN caselot cs
                                         ON ae.id_produit = cs.id_caselot
                                     LEFT JOIN (  SELECT au2.id_produit AS idpr,
                                                         NVL (MIN (DECODE (SUBSTR (id_ul, 1, 2), 'BX', au2.qte)), 1) AS luqte,
                                                         MAX (au2.num_algo_colisage) num_algo_colisage,
                                                         MAX (au2.id_emballage) emb,
                                                         au2.id_societe
                                                    FROM  SMEKG3.article_ul au2
                                                GROUP BY au2.id_produit, au2.id_societe) algo
                                         ON algo.idpr = ae.id_produit AND algo.id_societe = ae.id_societe
                               WHERE 1 = 1
                                 AND h.num_mouvement IN
                                         (100,                                                  -- коррекц.приемки(вход)
                                              101,                                                   -- инвентариз(вход)
                                                  102,                                                  -- приемка(вход)
                                                      104,                                       -- перекодировка (вход)
                                                          154,                                    -- коррекц. иниц(вход)
                                                              159,                                         -- иниц(вход)
                                                                  200,                        -- коррекц. приемки(выход)
                                                                      201,                      -- инвентаризация(выход)
                                                                          202,                          -- внешний выход
                                                                              204,               -- перекодировка(выход)
                                                                                  254,            -- корекц. иниц(выход)
                                                                                      259,                -- иниц(выход)
                                                                                          1020,       -- кросс-док(вход)
                                                                                               1021,   -- внешний приход
                                                                                                    1038) --кросс-докинг(выход)
                                 AND TRUNC (h.date_evenement) >= TRUNC (SYSDATE - 1)                          -- sysdate
                                 AND TRUNC (h.date_evenement) < TRUNC (SYSDATE)            -- sysdate --h.date_evenement
                            GROUP BY TRUNC (h.date_evenement),
                                     h.id_produit,
                                     h.num_mouvement,
                                     DECODE (h.id_position_destination,
                                             '0050.X.1', 'CD',
                                             '0900.CD', 'CD',
                                             '0901.CDSR', 'CD',
                                             '0902.CDOCK', 'XD',
                                             '0903.CDOV', 'XD'),
                                     etat_stock_n3_final,
                                     ae.id_societe) t
                       LEFT JOIN
                            SMEKG3.article_ul aul
                       ON t.idpr = aul.id_produit AND aul.id_ul = 'BX' AND ae_id_soc = aul.id_societe
              --------------------------------  END FROM-------------------------------------------------------------------------
            --   where idpr = 'R84FY8RT4G'
              GROUP BY TYPE,
                       dt,
                       idpr,
                       tm,
                       tp,
                       stock_status,
                       cd,
                       aul.id_ul
             )
    --______________________________________________COLLECTION PRIEMKA_ARRAY -----------------------------------------------------------------
    SELECT *
      BULK COLLECT INTO priemka_array
      FROM priemka;

    FOR i IN 1 .. priemka_array.COUNT LOOP
        MERGE INTO rc.priemka_otgr_ekat@rc_dpcp.world rc_add
             USING DUAL
                ON (rc_add.TYPE = priemka_array (i).TYPE
                AND rc_add.dt = priemka_array (i).dt
                AND rc_add.idpr = priemka_array (i).idpr
                AND NVL (rc_add.tm, '0') = NVL (priemka_array (i).tm, '0')
                AND rc_add.tp = priemka_array (i).tp
                AND rc_add.stock_status = priemka_array (i).stock_status
                AND NVL (rc_add.cd, '0') = NVL (priemka_array (i).cd, '0')
                AND NVL (rc_add.client, '0') = NVL (priemka_array (i).client, '0')
                AND NVL (rc_add.clienttype, '0') = NVL (priemka_array (i).clienttype, '0'))
        WHEN MATCHED THEN
            UPDATE SET
                rc_add.qte = priemka_array (i).qte,
                rc_add.qte_set = priemka_array (i).qte_set,
                rc_add.cntcor = priemka_array (i).cntcor,
                rc_add.volume = priemka_array (i).volume
                     WHERE rc_add.qte != priemka_array (i).qte
                       AND rc_add.qte_set != priemka_array (i).qte_set
                       AND rc_add.cntcor != priemka_array (i).cntcor
                       AND rc_add.volume != priemka_array (i).volume
        WHEN NOT MATCHED THEN
            INSERT     (rc_add.TYPE,
                        rc_add.dt,
                        rc_add.idpr,
                        rc_add.qte,
                        rc_add.qte_set,
                        rc_add.cntcor,
                        rc_add.tm,
                        rc_add.tp,
                        rc_add.stock_status,
                        rc_add.cd,
                        rc_add.client,
                        rc_add.clienttype,
                        rc_add.volume)
                VALUES (priemka_array (i).TYPE,
                        priemka_array (i).dt,
                        priemka_array (i).idpr,
                        priemka_array (i).qte,
                        priemka_array (i).qte_set,
                        priemka_array (i).cntcor,
                        priemka_array (i).tm,
                        priemka_array (i).tp,
                        priemka_array (i).stock_status,
                        priemka_array (i).cd,
                        priemka_array (i).client,
                        priemka_array (i).clienttype,
                        priemka_array (i).volume);
    END LOOP;

    INSERT INTO skier.job_entry@rc_dpcp.world (job_name,
                                               id_region,
                                               time_exec,
                                               time_start,
                                               table_name)
         VALUES ('add_priemka_o_v_ekat607', 607, SYSDATE, v_date_start, 'rc.priemka_otgr_ekat');

    COMMIT;
    --****************************************************************************************************************************************
    -----------------------------------------ОТГРУЗКА ЗАПРОС in WITH --------------------------------------------
    v_date_start := SYSDATE;

    WITH otgruzka AS (
        SELECT   'otgruzka' TYPE,
                 t.dt,
                 t.idpr,
                 sum(t.qte) AS qte,
                 sum(t.qte_set) AS qte_set,
                 ----- BEGIN CNTCOR

                 CASE
                     WHEN aul.id_ul = 'BX'
                     THEN
                         ROUND (
                               SUM (t.qte)
                             / DECODE (MAX (aul.qte),  NULL, 1,  0, 1,  MAX (aul.qte)),
                             6)
                     ELSE
                         SUM (t.qte)
                 END
                     cntcor,
                 ----- END CNTCOR

                 t.tm,
                 t.tp,
                 t.stock_status,
                 t.cd,
                 t.client,
                 (SELECT t.comment_1
                  FROM client_ranges t
                  WHERE     t.client >= range_min
                         AND t.client <= range_max
                         AND ae_id_soc = '00099')
                     AS clienttype,
                 (SELECT longueur * largeur * hauteur
                  FROM SMEKG3.article_ul
                  WHERE  id_ul = 'LU2'
                    AND id_produit = t.idpr
                    AND id_societe = ae_id_soc)
                 * 0.000000001
                 * SUM (t.qte)
                     AS volume
    FROM     (  SELECT TRUNC (eod.date_operation) AS dt,
                       ae.id_produit AS idpr,
                       SUM (lc.qte_deja_preparee) AS qte,
                       SUM (lc.qte_deja_preparee * NVL (cs.set_qte, 1))
                           AS qte_set,
                       ae.ext_trade_mark AS tm,
                       DECODE (aul.num_algo_colisage,
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
                               'МГТ')
                           AS tp,
                       lp.etat_stock_n3 AS stock_status,
                       DECODE (eop.ext_cross_dock,
                               0, '',                                    --нет
                               1, 'CD',                              --транзит
                               3, 'CD',                              --отборка
                               4, 'XD',                   --Да (КД EEM/не EEM)
                               5, 'XD'                         /*Да (КД КГТ)*/
                                      )
                           AS cd,
                       eop.id_client AS client,
                       lc.id_ul,
                       eop.id_societe AS ae_id_soc
                  FROM SMEKG3.entete_op eop
                       INNER JOIN SMEKG3.entete_op_date eod
                           ON     eod.num_op = eop.num_op
                              AND eop.id_societe = eod.id_societe
                       INNER JOIN SMEKG3.colis col
                           ON     eop.id_op = col.id_op
                              AND eop.id_societe = col.id_societe
                              AND eop.num_op = col.num_op
                       INNER JOIN SMEKG3.colis_date cd
                           ON     cd.id_colis = col.id_colis
                              AND eop.num_op = col.num_op
                              AND eop.id_op = col.id_op
                              AND eop.id_societe = col.id_societe
                       INNER JOIN SMEKG3.ligne_colisee lc
                           ON     col.id_colis = lc.id_colis
                              AND lc.num_op = eop.num_op
                              AND lc.id_op = eop.id_op
                              AND lc.id_societe = eop.id_societe
                       INNER JOIN SMEKG3.ligne_op lp
                           ON     eop.id_op = lp.id_op
                              AND eop.num_op = lp.num_op
                              AND lp.id_produit = lc.id_produit
                              AND lp.num_op = lc.num_op
                              AND lc.id_ligne = lp.id_ligne
                              AND lc.id_societe = lp.id_societe
                       INNER JOIN SMEKG3.article_e ae
                           ON     ae.id_produit = lc.id_produit
                              AND ae.id_societe = lc.id_societe
                       LEFT JOIN SMEKG3.article_ul aul
                           ON     ae.id_produit = aul.id_produit
                              AND aul.id_ul = lc.id_ul
                              AND aul.id_societe = lc.id_societe
                       LEFT JOIN caselot cs
                           ON lc.id_produit = cs.id_caselot
                 WHERE     TRUNC (eod.date_operation) >= TRUNC (SYSDATE - 1) -- дата заказа
                       AND TRUNC (eod.date_operation) < TRUNC (SYSDATE)
                       AND eod.type_date = 2000                   -- отправлен
                       AND cd.type_date = 2000                     -- отгружен
              GROUP BY
                       TRUNC (eod.date_operation),
                       ae.id_produit,
                       ae.ext_trade_mark,
                       aul.num_algo_colisage,
                       lp.etat_stock_n3,
                       eop.ext_cross_dock,
                       eop.id_client,
                       lc.id_ul,
                       eop.id_societe
                HAVING SUM (lc.qte_deja_preparee) <> 0) t
         LEFT JOIN
             SMEKG3.article_ul aul
             ON     t.idpr = aul.id_produit
            AND aul.id_ul = 'BX'
            AND ae_id_soc = aul.id_societe

--where idpr = '15CLSZ3180'

GROUP BY  aul.id_ul,
         dt,
         idpr,
        -- t.qte,
        -- qte_set,
         tm,
         tp,
         t.stock_status,
         cd,
         t.client,
         ae_id_soc
)
--______________________________________________COLLECTION OTGRUZKA_ARRAY -----------------------------------------------------------------

 SELECT *
      BULK COLLECT INTO otgruzka_array
      FROM otgruzka;

    FOR i IN 1 .. otgruzka_array.COUNT LOOP
        MERGE INTO rc.priemka_otgr_ekat@rc_dpcp.world rc_add
             USING DUAL
                ON (rc_add.TYPE = otgruzka_array (i).TYPE
                AND rc_add.dt = otgruzka_array (i).dt
                AND rc_add.idpr = otgruzka_array (i).idpr
                AND NVL (rc_add.tm, '0') = NVL (otgruzka_array (i).tm, '0')
                AND rc_add.tp = otgruzka_array (i).tp
                AND rc_add.stock_status = otgruzka_array (i).stock_status
                AND NVL (rc_add.cd, '0') = NVL (otgruzka_array (i).cd, '0')
                AND NVL (rc_add.client, '0') = NVL (otgruzka_array (i).client, '0')
                AND NVL (rc_add.clienttype, '0') = NVL (otgruzka_array (i).clienttype, '0'))
        WHEN MATCHED THEN
            UPDATE SET
                rc_add.qte = otgruzka_array (i).qte,
                rc_add.qte_set = otgruzka_array (i).qte_set,
                rc_add.cntcor = otgruzka_array (i).cntcor,
                rc_add.volume = otgruzka_array (i).volume
                     WHERE rc_add.qte != otgruzka_array (i).qte
                       AND rc_add.qte_set != otgruzka_array (i).qte_set
                       AND rc_add.cntcor != otgruzka_array (i).cntcor
                       AND rc_add.volume != otgruzka_array (i).volume
        WHEN NOT MATCHED THEN
            INSERT     (rc_add.TYPE,
                        rc_add.dt,
                        rc_add.idpr,
                        rc_add.qte,
                        rc_add.qte_set,
                        rc_add.cntcor,
                        rc_add.tm,
                        rc_add.tp,
                        rc_add.stock_status,
                        rc_add.cd,
                        rc_add.client,
                        rc_add.clienttype,
                        rc_add.volume)
                VALUES (otgruzka_array (i).TYPE,
                        otgruzka_array (i).dt,
                        otgruzka_array (i).idpr,
                        otgruzka_array (i).qte,
                        otgruzka_array (i).qte_set,
                        otgruzka_array (i).cntcor,
                        otgruzka_array (i).tm,
                        otgruzka_array (i).tp,
                        otgruzka_array (i).stock_status,
                        otgruzka_array (i).cd,
                        otgruzka_array (i).client,
                        otgruzka_array (i).clienttype,
                        otgruzka_array (i).volume);
    END LOOP;

    INSERT INTO skier.job_entry@rc_dpcp.world (job_name,
                                               id_region,
                                               time_exec,
                                               time_start,
                                               table_name)
     VALUES ('add_p_otgruzka_v_ekat607', 607, SYSDATE, v_date_start, 'rc.priemka_otgr_ekat');

    COMMIT;
--______________________________________________END COLLECTION OTGRUZKA_ARRAY-----------------------------------
END add_priemka_otgr_vozv_ekat607;
