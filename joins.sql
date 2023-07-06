-- Creación de la tabla "Clientes"
CREATE TABLE test.Clientes (
  id INT64,
  nombre STRING,
  ciudad STRING
);

-- Insertar datos en la tabla "Clientes"
INSERT INTO test.Clientes (id, nombre, ciudad)
VALUES
  (1, 'Juan', 'Ciudad de Mexico'),
  (2, 'María', 'Lima, Peru'),
  (3, 'Pedro', 'Bogota, Colombia'),
  (4, 'Ana', 'Buenos Aires, Argentina'),
  (5, 'Luis', 'Quito, Ecuador');

SELECT * FROM test.Clientes;

-- Creación de la tabla "Pedidos"
CREATE TABLE test.Pedidos (
  id INT64,
  cliente_id INT64,
  producto STRING,
  cantidad INT64
);

-- Insertar datos en la tabla "Pedidos"
INSERT INTO test.Pedidos (id, cliente_id, producto, cantidad)
VALUES
  (101, 1, 'Producto A', 5),
  (102, 2, 'Producto B', 3),
  (103, 3, 'Producto A', 2),
  (104, 4, 'Producto C', 1),
  (105, 1, 'Producto B', 2),
  (106, 6, 'Producto C', 10);


------ LEFT JOIN 
SELECT C.nombre, P.producto
FROM `test.Clientes` AS C
LEFT JOIN 
`test.Pedidos` AS P
ON
C.id = P.cliente_id;

SELECT *
FROM `test.Clientes`
LEFT JOIN 
`test.Pedidos`
ON
`test.Clientes`.id = `test.Pedidos`.cliente_id;


------ RIGHT JOIN
SELECT *
FROM `test.Clientes` AS C
RIGHT JOIN 
`test.Pedidos` AS P
ON
C.id = P.cliente_id;

------ INNER JOIN
SELECT *
FROM `test.Clientes` AS C
INNER JOIN 
`test.Pedidos` AS P
ON
C.id = P.cliente_id;

------ FULL JOIN
SELECT *
FROM `test.Clientes` AS C
FULL JOIN 
`test.Pedidos` AS P
ON
C.id = P.cliente_id;