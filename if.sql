-- Crear una tabla llamada ventas_productos
CREATE OR REPLACE TABLE `curso-384005.test.ventas_productos` AS
SELECT
  1 AS id_venta,
  'Producto A' AS producto,
  100 AS cantidad_vendida,
  50 AS precio_unitario,
  '2023-09-10' AS fecha_venta
UNION ALL
SELECT
  2 AS id_venta,
  'Producto B' AS producto,
  75 AS cantidad_vendida,
  NULL AS precio_unitario,
  '2023-09-11' AS fecha_venta
UNION ALL
SELECT
  3 AS id_venta,
  'Producto C' AS producto,
  200 AS cantidad_vendida,
  80 AS precio_unitario,
  '2023-09-12' AS fecha_venta;


SELECT *, IF(cantidad_vendida > 100, "Buena venta", "Mala venta") AS categoria_venta
FROM `test.ventas_productos`;

SELECT *, IF(producto IN ("Producto A", "Producto B"), "Tienda A", "Tienda B") AS tienda 
FROM `test.ventas_productos`;

SELECT *, IF(precio_unitario IS NULL, 0, precio_unitario) AS precio_unitario_sin_nulos 
FROM `test.ventas_productos`;

SELECT * EXCEPT(precio_unitario), IFNULL(precio_unitario, 1000) AS precio_unitario_sin_nulos 
FROM `test.ventas_productos`;




