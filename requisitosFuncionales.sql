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


--7 Consultar nuevo director mas apto --perfect
-- asumiendo que el caso es una sección no de quirofanos
SELECT e.idEmpleado, e.nombre, e.apellido1, e.apellido2, e.fecha_ingreso, e.salario
 FROM Empleado e
 WHERE e.idEmpleado NOT IN (SELECT s.idDirector FROM Seccion s WHERE s.idDirector IS NOT NULL)
 AND SYSDATE - e.fecha_ingreso > 20*365.25
 ORDER BY e.fecha_ingreso ASC, e.salario DESC;


--8 Cambiar director de seccion --perfect

UPDATE Seccion
   SET idDirector = 'E007'
 WHERE idSeccion  = 'S001';


--9 Consultar coste promedio y coste más caro de hospitalizaciones por tipo de animal --perfectt

--Suponiendo que el “coste” de una hospitalización es coste_base_diario + coste_extra (columna de Sala_Hospitalizacion), y relacionamos con Animal a través de Ocupada_Por (idAnimal, idSalaHospitalizacion) → Sala_Hospitalizacion → Animal.idTipoAnimal → Tipo_Animal.

SELECT t.nombre AS tipo_animal,
       ROUND(AVG(sh.coste_base_diario + sh.coste_extra), 2) AS coste_promedio,
       ROUND(MAX(sh.coste_base_diario + sh.coste_extra), 2) AS coste_maximo
  FROM Ocupada_Por op, tipo_animal t, sala_hospitalizacion sh, animal a
  WHERE op.idanimal = a.idanimal AND
        a.idtipoanimal = t.idtipoanimal AND
        op.idsalahospitalizacion = sh.idsalahospitalizacion
 GROUP BY t.nombre;
 
 --10 Consultar tiempo promedio de hospitalización por tipo de animal --perfect
 
 SELECT t.nombre AS tipo_animal,
       ROUND(AVG(sh.duracion_esperada), 2) AS tiempo_promedio
  FROM Ocupada_Por op, tipo_animal t, sala_hospitalizacion sh, animal a
  WHERE op.idanimal = a.idanimal AND
        a.idtipoanimal = t.idtipoanimal AND
        op.idsalahospitalizacion = sh.idsalahospitalizacion
 GROUP BY t.nombre;


--11 Consultar salarios mínimo, máximo y promedio por tipo de empleado --perfect

-- Administradores
SELECT 'Administrador' AS tipo_empleado,
       MIN(e.salario)  AS salario_min,
       MAX(e.salario)  AS salario_max,
       ROUND(AVG(e.salario), 2) AS salario_promedio
  FROM Empleado e
       JOIN Administrador ad ON e.idEmpleado = ad.idEmpleado

UNION -- utilizamos esta sentencia para unir los resultados de las consultas en una sola.

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

--12 Consultar ranking de medicamentos más y menos recetados --perfect

SELECT m.nombre AS medicamento,
       DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) AS ranking_veces_recetado
  FROM Receta r, medicamento m
  WHERE r.idmedicamento = m.idmedicamento
 GROUP BY m.nombre
ORDER BY ranking_veces_recetado ASC;

--13 Consultar medicamentos que más unidades se recetaron el último mes --creo que esta mal

SELECT m.nombre             AS medicamento,
       SUM(r.unidades_a_suministrar) AS total_unidades_ult_mes
  FROM Receta r,
       Medicamento m
 WHERE r.idMedicamento = m.idMedicamento
   AND r.fecha_comienzo >= (SYSDATE - 30)
 GROUP BY m.nombre
 ORDER BY SUM(r.unidades_a_suministrar) DESC;


--14 Consultar en qué día de la semana se hacen más citas --perfect

SELECT TO_CHAR(fecha, 'DY', 'NLS_DATE_LANGUAGE=SPANISH') AS dia_semana,
       COUNT(*) AS total_citas
  FROM Cita
 GROUP BY TO_CHAR(fecha, 'DY', 'NLS_DATE_LANGUAGE=SPANISH')
 ORDER BY total_citas DESC;


--15 Consultar porcentaje de consultas de urgencia sobre consultas totales --bien-corregido

SELECT ROUND(
         (cu.cont_urg * 100.0)
         / ct.cont_total
       ,2) AS porcentaje_urgencias
  FROM (SELECT COUNT(*) AS cont_urg
          FROM Consulta_Urgencia
       ) cu,
       (SELECT COUNT(*) AS cont_total
          FROM Consulta
       ) ct;



--16 Consultar duración promedio de consultas rutinarias --perfect

SELECT ROUND(AVG(duracion_aproximada), 2) AS duracion_promedio
  FROM Consulta_Rutinaria;


--17 Consultar salario promedio por sección -- creo que esta mal

SELECT s.idSeccion,
       s.proposito,
       ROUND(AVG(e.salario), 2) AS salario_promedio
  FROM Seccion         s,
       Sala            sa,
       Veterinario     v,
       Empleado        e
 WHERE s.idSeccion  = sa.idSeccion
   AND sa.idSala    = v.idSala
   AND v.idEmpleado = e.idEmpleado
 GROUP BY s.idSeccion, s.proposito;



--18 Consultar la sección de la cual su director tiene el salario más alto --creo que esta bien

SELECT *
  FROM (
        SELECT s.idSeccion,
               s.proposito,
               e.nombre,
               e.apellido1,
               e.salario
          FROM Seccion s,
               Empleado e
         WHERE s.idDirector = e.idEmpleado
         ORDER BY e.salario DESC
       )
 WHERE ROWNUM = 1;



--19 Consultar años totales de carrera estudiados por los cirujanos de la clínica por institución --perfect

SELECT institucion,
       SUM(anios_carrera) AS total_anios_carrera
  FROM Cirujano
 GROUP BY institucion;

--20 Consultar tiempo promedio entre la fecha de nacimiento de un animal y su primera consulta --creo que podria estar mal --revisar

SELECT a.idAnimal,
       a.nombre,
       ROUND(
         (
           (SELECT MIN(ci.fecha)
              FROM Cita ci
             WHERE ci.idAnimal = a.idAnimal
           )
           - a.fecha_nacimiento
         )
       ,2) AS dias_hasta_primera_cita
  FROM Animal a;


--21 Consultar cantidad total de consultas hechas por sección --creo que podria estar mal, deberia dar por cada seccion y solo da de una

SELECT se.idSeccion,
       se.proposito,
       COUNT(co.idConsulta) AS total_consultas
  FROM Seccion   se,
       Sala      sa,
       Asignacion asg,
       Consulta  co
 WHERE se.idSeccion  = sa.idSeccion
   AND sa.idSala     = asg.idSala
   AND asg.idConsulta = co.idConsulta
 GROUP BY se.idSeccion, se.proposito;


--22 Consultar qué veterinario/cirujano realizó más cirugías y qué porcentaje representa sobre las cirugías totales --creo que esta mal

SELECT x.idEmpleado,
       x.tipo_empleado,
       x.total_cirugias,
       ROUND(x.total_cirugias * 100.0 / y.total_global, 2) AS porcentaje
  FROM (
        SELECT op.idEmpleado              AS idEmpleado,
               'Veterinario'             AS tipo_empleado,
               COUNT(*)                  AS total_cirugias
          FROM Operada_Por op,
               Veterinario v
         WHERE op.idEmpleado = v.idEmpleado
         GROUP BY op.idEmpleado
        UNION ALL
        SELECT op.idEmpleado              AS idEmpleado,
               'Cirujano'                AS tipo_empleado,
               COUNT(*)                  AS total_cirugias
          FROM Operada_Por op,
               Cirujano c
         WHERE op.idEmpleado = c.idEmpleado
         GROUP BY op.idEmpleado
       ) x,
       (
         SELECT COUNT(*) AS total_global
           FROM Operada_Por
       ) y
 ORDER BY x.total_cirugias DESC;


--23 Calcular la cantidad de envases/cajas a recetar en base al medicamento y las unidades prescriptas --creo que esta bien

SELECT r.idReceta,
       m.nombre               AS medicamento,
       r.unidades_a_suministrar,
       m.unidades_caja,
       ROUND( (r.unidades_a_suministrar / m.unidades_caja) + 0.9999999 ) 
         AS cajas_necesarias
  FROM Receta     r,
       Medicamento m
 WHERE r.idMedicamento = m.idMedicamento;



--24 Aumentar los precios de los medicamentos un 15% --perfect

UPDATE Medicamento
   SET costo = costo * 1.15;

--25 Aumentar los salarios un 10% con un máximo de 1000 euros de aumento --perfect

UPDATE Empleado
   SET salario = salario + LEAST(salario * 0.10, 1000);


--26 Consultar porcentajes de veterinarios turno día/noche y cirujanos turno día/noche --perfect

SELECT d.tipo_empleado,
       d.turno,
       d.cant,
       ROUND(d.cant * 100.0 / t.total_tipo, 2) AS porcentaje
  FROM (  -- Detalles por turno
         SELECT 'Veterinario' AS tipo_empleado,
                e.turno       AS turno,
                COUNT(*)      AS cant
           FROM Veterinario v,
                Empleado    e
          WHERE v.idEmpleado = e.idEmpleado
          GROUP BY e.turno
         UNION ALL
         SELECT 'Cirujano',
                e.turno,
                COUNT(*)
           FROM Cirujano   c,
                Empleado   e
          WHERE c.idEmpleado = e.idEmpleado
          GROUP BY e.turno
       ) d,
       (  -- Totales por tipo
         SELECT 'Veterinario' AS tipo_empleado,
                COUNT(*)      AS total_tipo
           FROM Veterinario v,
                Empleado    e
          WHERE v.idEmpleado = e.idEmpleado
         UNION ALL
         SELECT 'Cirujano',
                COUNT(*)
           FROM Cirujano  c,
                Empleado  e
          WHERE c.idEmpleado = e.idEmpleado
       ) t
 WHERE d.tipo_empleado = t.tipo_empleado
 ORDER BY d.tipo_empleado, d.turno;

--27 Calcular el coste de todas las hospitalizaciones--creo que esta bien

SELECT SUM(sh.coste_base_diario + sh.coste_extra) AS coste_total
  FROM Sala_Hospitalizacion sh;


       
--28 Consultar el número promedio de consultas realizadas según la cantidad de mascotas por dueño --creo que estta mal

--Necesitamos (1) cuántas mascotas tiene cada dueño y (2) cuántas consultas totales hicieron, y luego promediar por ese número de mascotas.


SELECT sub.total_mascotas,
       ROUND(AVG(sub.total_consultas), 2) AS promedio_consultas
  FROM (
        SELECT d.idDuenio,
               /* (1) Cantidad de mascotas de este dueño */
               (SELECT COUNT(*)
                  FROM Animal a
                 WHERE a.idDuenio = d.idDuenio
               ) AS total_mascotas,

               /* (2) Cantidad total de consultas de sus animales */
               (SELECT COUNT(co.idConsulta)
                  FROM Animal   a,
                       Cita     ci,
                       Consulta co
                 WHERE a.idDuenio  = d.idDuenio
                   AND ci.idAnimal = a.idAnimal
                   AND co.idCita   = ci.idCita
               ) AS total_consultas
          FROM Duenio d
       ) sub
 GROUP BY sub.total_mascotas
 ORDER BY sub.total_mascotas;

 




