-- Crear una tabla de alumnos
CREATE OR REPLACE TABLE test.alumnos (
  alumno_id INT64,
  nombre STRING
);

-- Insertar algunos datos en la tabla de alumnos
INSERT INTO test.alumnos (alumno_id_, nombre)
VALUES
  (1, 'Juan'),
  (2, 'María'),
  (3, 'Carlos');

-- Crear una tabla de calificacionnes
CREATE OR REPLACE TABLE test.calificaciones (
  calificacion INT64,
  alumno_id INT64,
  materia STRING
);

-- Insertar algunos datos en la tabla de calificacionnes
INSERT INTO test.calificaciones (calificacion, alumno_id, materia)
VALUES
  (10, 1, 'Calculo'),
  (9, 2, 'Algebra'),
  (6, 1, 'Calculo');


SELECT *
FROM test.alumnos
LEFT JOIN test.calificaciones
ON
alumnos.alumno_id = calificaciones.alumno_id;

SELECT *
FROM test.alumnos
LEFT JOIN test.calificaciones
USING(alumno_id);







