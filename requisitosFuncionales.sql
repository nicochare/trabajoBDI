--1 crear cita --funciona perfecto

INSERT INTO Cita (idCita, fecha, motivo, estado, idAnimal, idAdministrador)
VALUES ('CIT010', SYSDATE, 'Revisión de rutina', 'programada', 'A001', 'AD001');


--2 Registrar animal --perfecto

INSERT INTO Animal (
  idAnimal, nombre, fecha_nacimiento, raza, peso, altura, largo, ancho, 
  idDuenio, idTipoAnimal
) 
VALUES (
  'A010', 'Luna', DATE '2023-01-01', 'Poodle', 
  5.50, 30, 40, 15, 
  'D001', 'T001'
);


--3 Registrar dueño --perfect

INSERT INTO Duenio (
  idDuenio, nombre, apellido1, apellido2, 
  fecha_nacimiento, fecha_alta, correo, telefono, 
  region, pais, codigo_postal, nombreCalle, tipo_via, numero
)
VALUES (
  'D010', 'Lucía', 'García', 'Torres',
  DATE '1995-05-05', SYSDATE, 'lucia@example.com', '700200010',
  'RegX', 'PaisX', 99999, 'Calle Principal', 'Calle', 99
);



--4 Actualizar datos de un dueño --perfect

UPDATE Duenio
   SET telefono       = '700200999',
       correo         = 'nuevo_correo@example.com',
       region         = 'RegionActualizada'
 WHERE idDuenio       = 'D001';


--5 Actualizar datos de un animal --perfect

UPDATE Animal
   SET peso    = 6.80,
       altura  = 35,
       largo   = 50,
       ancho   = 18
 WHERE idAnimal = 'A010';


--6 Eliminar todas las citas canceladas --perfect

DELETE FROM Cita
 WHERE estado = 'cancelada';


--7 Consultar nuevo director mas apto --duda

SELECT e.idEmpleado, e.nombre, e.apellido1, e.apellido2, e.salario
  FROM Empleado e
 WHERE e.idEmpleado NOT IN (SELECT s.idDirector FROM Seccion s WHERE s.idDirector IS NOT NULL)
 ORDER BY e.salario DESC
 FETCH FIRST 1 ROWS ONLY;


--8 Cambiar director de seccion --perfect

UPDATE Seccion
   SET idDirector = 'E007'
 WHERE idSeccion  = 'S001';


--9 Consultar coste promedio y coste más caro de hospitalizaciones por tipo de animal --duda

--Suponiendo que el “coste” de una hospitalización es coste_base_diario + coste_extra (columna de Sala_Hospitalizacion), y relacionamos con Animal a través de Ocupada_Por (idAnimal, idSalaHospitalizacion) → Sala_Hospitalizacion → Animal.idTipoAnimal → Tipo_Animal.

SELECT t.nombre AS tipo_animal,
       ROUND(AVG(sh.coste_base_diario + sh.coste_extra), 2) AS coste_promedio,
       ROUND(MAX(sh.coste_base_diario + sh.coste_extra), 2) AS coste_maximo
  FROM Ocupada_Por op
       JOIN Sala_Hospitalizacion sh ON op.idSalaHospitalizacion = sh.idSalaHospitalizacion
       JOIN Animal a ON op.idAnimal = a.idAnimal
       JOIN Tipo_Animal t ON a.idTipoAnimal = t.idTipoAnimal
 GROUP BY t.nombre;
 
 --10 Consultar tiempo promedio de hospitalización por tipo de animal --duda
 
 SELECT t.nombre AS tipo_animal,
       ROUND(AVG(sh.duracion_esperada), 2) AS tiempo_promedio
  FROM Ocupada_Por op
       JOIN Sala_Hospitalizacion sh ON op.idSalaHospitalizacion = sh.idSalaHospitalizacion
       JOIN Animal a ON op.idAnimal = a.idAnimal
       JOIN Tipo_Animal t ON a.idTipoAnimal = t.idTipoAnimal
 GROUP BY t.nombre;


--11 Consultar salarios mínimo, máximo y promedio por tipo de empleado --perfect

-- Administradores
SELECT 'Administrador' AS tipo_empleado,
       MIN(e.salario)  AS salario_min,
       MAX(e.salario)  AS salario_max,
       ROUND(AVG(e.salario), 2) AS salario_promedio
  FROM Empleado e
       JOIN Administrador ad ON e.idEmpleado = ad.idEmpleado

UNION

-- Veterinarios
SELECT 'Veterinario' AS tipo_empleado,
       MIN(e.salario)  AS salario_min,
       MAX(e.salario)  AS salario_max,
       ROUND(AVG(e.salario), 2) AS salario_promedio
  FROM Empleado e
       JOIN Veterinario v ON e.idEmpleado = v.idEmpleado

UNION

-- Cirujanos
SELECT 'Cirujano' AS tipo_empleado,
       MIN(e.salario)  AS salario_min,
       MAX(e.salario)  AS salario_max,
       ROUND(AVG(e.salario), 2) AS salario_promedio
  FROM Empleado e
       JOIN Cirujano c ON e.idEmpleado = c.idEmpleado;

--12 Consultar ranking de medicamentos más y menos recetados --duda

SELECT m.nombre AS medicamento,
       COUNT(*) AS veces_recetado
  FROM Receta r
       JOIN Medicamento m ON r.idMedicamento = m.idMedicamento
 GROUP BY m.nombre
 ORDER BY veces_recetado DESC;

--13 Consultar medicamentos que más unidades se recetaron el último mes

SELECT m.nombre AS medicamento,
       SUM(r.unidades_a_suministrar) AS total_unidades_ult_mes
  FROM Receta r
       JOIN Medicamento m ON r.idMedicamento = m.idMedicamento
 WHERE r.fecha_comienzo >= ADD_MONTHS(TRUNC(SYSDATE), -1)
 GROUP BY m.nombre
 ORDER BY total_unidades_ult_mes DESC;

--14 Consultar en qué día de la semana se hacen más citas

SELECT TO_CHAR(fecha, 'DY', 'NLS_DATE_LANGUAGE=SPANISH') AS dia_semana,
       COUNT(*) AS total_citas
  FROM Cita
 GROUP BY TO_CHAR(fecha, 'DY', 'NLS_DATE_LANGUAGE=SPANISH')
 ORDER BY total_citas DESC;


--15 Consultar porcentaje de consultas de urgencia sobre consultas totales

SELECT 
  ROUND(
    (
      SELECT COUNT(*) FROM Consulta_Urgencia
    ) * 100.0
    /
    (SELECT COUNT(*) FROM Consulta)
  ,2) AS porcentaje_urgencias
FROM DUAL;


--16 Consultar duración promedio de consultas rutinarias

SELECT ROUND(AVG(duracion_aproximada), 2) AS duracion_promedio
  FROM Consulta_Rutinaria;


--17 Consultar salario promedio por sección

SELECT s.idSeccion,
       s.proposito,
       ROUND(AVG(e.salario), 2) AS salario_promedio
  FROM Seccion s
       JOIN Sala sa       ON s.idSeccion = sa.idSeccion
       JOIN Veterinario v ON v.idSala    = sa.idSala
       JOIN Empleado e    ON e.idEmpleado = v.idEmpleado
 GROUP BY s.idSeccion, s.proposito;


--18 Consultar la sección de la cual su director tiene el salario más alto

SELECT s.idSeccion,
       s.proposito,
       e.nombre,
       e.apellido1,
       e.salario
  FROM Seccion s
       JOIN Empleado e ON s.idDirector = e.idEmpleado
 ORDER BY e.salario DESC
 FETCH FIRST 1 ROWS ONLY;


--19 Consultar años totales de carrera estudiados por los cirujanos de la clínica por institución

SELECT institucion,
       SUM(anios_carrera) AS total_anios_carrera
  FROM Cirujano
 GROUP BY institucion;

--20 Consultar tiempo promedio entre la fecha de nacimiento de un animal y su primera consulta

SELECT a.idAnimal,
       a.nombre,
       ROUND(AVG((MIN(ci.fecha)) - a.fecha_nacimiento)) AS promedio_dias
  FROM Animal a
       JOIN Cita ci ON ci.idAnimal = a.idAnimal
 GROUP BY a.idAnimal, a.nombre;

--21 Consultar cantidad total de consultas hechas por sección

SELECT se.idSeccion,
       se.proposito,
       COUNT(co.idConsulta) AS total_consultas
  FROM Seccion se
       JOIN Sala sa        ON se.idSeccion = sa.idSeccion
       JOIN Asignacion asg ON asg.idSala   = sa.idSala
       JOIN Consulta co    ON co.idConsulta = asg.idConsulta
 GROUP BY se.idSeccion, se.proposito;

--22 Consultar qué veterinario/cirujano realizó más cirugías y qué porcentaje representa sobre las cirugías totales

SELECT sub.idEmpleado,
       sub.tipo_empleado,
       sub.total_cirugias,
       ROUND(
         (sub.total_cirugias * 100.0 / 
          (SELECT COUNT(*) FROM Operada_Por)
         ), 2
       ) AS porcentaje
  FROM (
        SELECT op.idEmpleado,
               CASE 
                 WHEN op.idEmpleado IN (SELECT idEmpleado FROM Veterinario) THEN 'Veterinario'
                 WHEN op.idEmpleado IN (SELECT idEmpleado FROM Cirujano)    THEN 'Cirujano'
                 ELSE 'Otro'
               END AS tipo_empleado,
               COUNT(*) AS total_cirugias
          FROM Operada_Por op
         GROUP BY op.idEmpleado
       ) sub
 ORDER BY sub.total_cirugias DESC
 FETCH FIRST 1 ROWS ONLY;

--23 Calcular la cantidad de envases/cajas a recetar en base al medicamento y las unidades prescriptas

SELECT r.idReceta,
       m.nombre           AS medicamento,
       r.unidades_a_suministrar,
       m.unidades_caja,
       CEIL(r.unidades_a_suministrar / m.unidades_caja) AS cajas_necesarias
  FROM Receta r
       JOIN Medicamento m ON r.idMedicamento = m.idMedicamento;


--24 Aumentar los precios de los medicamentos un 15%

UPDATE Medicamento
   SET costo = costo * 1.15;

--25 Aumentar los salarios un 10% con un máximo de 1000 euros de aumento

UPDATE Empleado
   SET salario = salario + LEAST(salario * 0.10, 1000);


--26 Consultar porcentajes de veterinarios turno día/noche y cirujanos turno día/noche

SELECT tipo_empleado,
       turno,
       COUNT(*) AS cantidad,
       ROUND(
         COUNT(*) * 100.0 
         / SUM(COUNT(*)) OVER (PARTITION BY tipo_empleado)
       ,2) AS porcentaje
  FROM (
        SELECT 'Veterinario' AS tipo_empleado, e.turno
          FROM Veterinario v
               JOIN Empleado e ON v.idEmpleado = e.idEmpleado
         UNION ALL
        SELECT 'Cirujano' AS tipo_empleado, e.turno
          FROM Cirujano c
               JOIN Empleado e ON c.idEmpleado = e.idEmpleado
       ) datos
 GROUP BY tipo_empleado, turno
 ORDER BY tipo_empleado, turno;

--27 Calcular el coste de todas las hospitalizaciones

--Simplificado: sumamos (coste_base_diario + coste_extra) de cada Sala_Hospitalizacion. Si también consideraras la “duración real,” podrías multiplicar por duracion_esperada u otra columna.

SELECT SUM(sh.coste_base_diario + sh.coste_extra) AS coste_total
  FROM Sala_Hospitalizacion sh;

--O si quieres incluir únicamente las que están ocupadas en Ocupada_Por:

SELECT SUM(sh.coste_base_diario + sh.coste_extra) AS coste_total
  FROM Sala_Hospitalizacion sh
       JOIN Ocupada_Por op ON op.idSalaHospitalizacion = sh.idSalaHospitalizacion;
       
       
--28 Consultar el número promedio de consultas realizadas según la cantidad de mascotas por dueño

--Necesitamos (1) cuántas mascotas tiene cada dueño y (2) cuántas consultas totales hicieron, y luego promediar por ese número de mascotas.


WITH cte_mascotas AS (
  SELECT d.idDuenio,
         COUNT(a.idAnimal) AS total_mascotas
    FROM Duenio d
         LEFT JOIN Animal a ON a.idDuenio = d.idDuenio
   GROUP BY d.idDuenio
),
cte_consultas AS (
  SELECT d.idDuenio,
         COUNT(co.idConsulta) AS total_consultas
    FROM Duenio d
         LEFT JOIN Animal a ON a.idDuenio = d.idDuenio
         LEFT JOIN Cita ci   ON ci.idAnimal = a.idAnimal
         LEFT JOIN Consulta co ON co.idCita = ci.idCita
   GROUP BY d.idDuenio
)
SELECT c.total_mascotas,
       ROUND(AVG(k.total_consultas), 2) AS promedio_consultas
  FROM cte_mascotas c
       JOIN cte_consultas k ON c.idDuenio = k.idDuenio
 GROUP BY c.total_mascotas
 ORDER BY c.total_mascotas;
 




