-------------
CREATE OR REPLACE TABLE `test.transactions` AS (
WITH usuarios AS (
  SELECT 'user_uuid_1' AS user_uuid
  UNION ALL SELECT 'user_uuid_2'
  UNION ALL SELECT 'user_uuid_3'
  UNION ALL SELECT 'user_uuid_4'
),

fechas AS (
  SELECT DATE_SUB(CURRENT_DATE(), INTERVAL 2 MONTH) AS fecha_inicio,
         CURRENT_DATE() AS fecha_fin
)

SELECT
  fecha,
  u.user_uuid,
  CASE 
    WHEN MOD(ABS(FARM_FINGERPRINT(CONCAT(u.user_uuid, CAST(txn AS STRING)))), 2) = 0 THEN 'cargo'
    ELSE 'abono'
  END AS tipo_transaccion,
  ROUND(MOD(ABS(FARM_FINGERPRINT(CONCAT(u.user_uuid, CAST(txn AS STRING)))), 100), 2) AS monto
FROM
  usuarios u
CROSS JOIN
  fechas f,
  UNNEST(GENERATE_DATE_ARRAY(f.fecha_inicio, f.fecha_fin)) AS fecha
CROSS JOIN
  UNNEST(GENERATE_ARRAY(1, 60)) AS txn
);


SELECT
  fecha,
  user_uuid,
  tipo_transaccion,
  AVG(monto) AS avg_monto,
  COUNT(*) AS conteo,
  MIN(monto) AS minimo,
  MAX(monto),
  SUM(monto)
FROM
  `test.transactions`
GROUP BY
  fecha,
  user_uuid,
  tipo_transaccion
HAVING
  avg_monto > 47
  AND minimo > 1
ORDER BY
  fecha,
  user_uuid;