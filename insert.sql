-------------------------------------------------------------------------------
-- 1) EMPLEADO
-------------------------------------------------------------------------------
INSERT INTO Empleado (idEmpleado, nombre, apellido1, apellido2, DNI, turno, salario,
                      telefono, fecha_ingreso, correo, fecha_nacimiento, 
                      region, pais, numero, tipo_via, nombreCalle)
VALUES ('E001','Alice','Gomez','Lopez','11111111A','dia',1200,
        '600100001',DATE '2022-01-01','e001@clinic.com',
        DATE '1990-01-01','Region1','Pais1',10,'Calle','Primera');

INSERT INTO Empleado (idEmpleado, nombre, apellido1, apellido2, DNI, turno, salario,
                      telefono, fecha_ingreso, correo, fecha_nacimiento,
                      region, pais, numero, tipo_via, nombreCalle)
VALUES ('E002','Bob','Martinez','Rey','11111112B','noche',1300,
        '600100002',DATE '2022-02-02','e002@clinic.com',
        DATE '1991-02-02','Region2','Pais1',20,'Avenida','Central');

INSERT INTO Empleado (idEmpleado, nombre, apellido1, apellido2, DNI, turno, salario,
                      telefono, fecha_ingreso, correo, fecha_nacimiento,
                      region, pais, numero, tipo_via, nombreCalle)
VALUES ('E003','Carla','Rodriguez','Perez','11111113C','dia',1500,
        '600100003',DATE '2022-03-03','e003@clinic.com',
        DATE '1989-03-03','Region3','Pais2',30,'Calle','Secundaria');

INSERT INTO Empleado (idEmpleado, nombre, apellido1, apellido2, DNI, turno, salario,
                      telefono, fecha_ingreso, correo, fecha_nacimiento,
                      region, pais, numero, tipo_via, nombreCalle)
VALUES ('E004','David','Hernandez','Castro','11111114D','dia',1700,
        '600100004',DATE '2022-01-15','e004@clinic.com',
        DATE '1988-01-15','Region4','Pais2',40,'Avenida','Primera');

INSERT INTO Empleado (idEmpleado, nombre, apellido1, apellido2, DNI, turno, salario,
                      telefono, fecha_ingreso, correo, fecha_nacimiento,
                      region, pais, numero, tipo_via, nombreCalle)
VALUES ('E005','Eva','Salas','Marin','11111115E','noche',1800,
        '600100005',DATE '2022-02-16','e005@clinic.com',
        DATE '1992-02-16','Region5','Pais3',50,'Calle','Tercera');

INSERT INTO Empleado (idEmpleado, nombre, apellido1, apellido2, DNI, turno, salario,
                      telefono, fecha_ingreso, correo, fecha_nacimiento,
                      region, pais, numero, tipo_via, nombreCalle)
VALUES ('E006','Fernando','Diaz','Rico','11111116F','dia',1600,
        '600100006',DATE '2022-03-17','e006@clinic.com',
        DATE '1993-03-17','Region6','Pais3',60,'Avenida','Cuarta');

INSERT INTO Empleado (idEmpleado, nombre, apellido1, apellido2, DNI, turno, salario,
                      telefono, fecha_ingreso, correo, fecha_nacimiento,
                      region, pais, numero, tipo_via, nombreCalle)
VALUES ('E007','Gloria','Blanco','Vega','11111117G','noche',2000,
        '600100007',DATE '2022-04-18','e007@clinic.com',
        DATE '1987-04-18','Region7','Pais4',70,'Calle','Quinta');

INSERT INTO Empleado (idEmpleado, nombre, apellido1, apellido2, DNI, turno, salario,
                      telefono, fecha_ingreso, correo, fecha_nacimiento,
                      region, pais, numero, tipo_via, nombreCalle)
VALUES ('E008','Hector','Iglesias','Mora','11111118H','dia',2100,
        '600100008',DATE '2022-05-19','e008@clinic.com',
        DATE '1991-05-19','Region8','Pais4',80,'Calle','Sexta');

INSERT INTO Empleado (idEmpleado, nombre, apellido1, apellido2, DNI, turno, salario,
                      telefono, fecha_ingreso, correo, fecha_nacimiento,
                      region, pais, numero, tipo_via, nombreCalle)
VALUES ('E009','Irene','Vargas','Nuñez','11111119I','noche',2200,
        '600100009',DATE '2022-06-20','e009@clinic.com',
        DATE '1990-06-20','Region9','Pais5',90,'Avenida','Septima');


-------------------------------------------------------------------------------
-- 2) SECCION
-------------------------------------------------------------------------------
INSERT INTO Seccion (idSeccion, proposito, idDirector)
VALUES ('S001','Sección Cirugía','E001');
INSERT INTO Seccion (idSeccion, proposito, idDirector)
VALUES ('S002','Sección Hospitalización','E002');
INSERT INTO Seccion (idSeccion, proposito, idDirector)
VALUES ('S003','Sección Tratamiento','E003');


-------------------------------------------------------------------------------
-- 3) SALA
-------------------------------------------------------------------------------
INSERT INTO Sala (idSala, idSeccion, fecha_inauguracion, estado_ocupacion)
VALUES ('SAL001','S001',DATE '2020-01-01','libre');
INSERT INTO Sala (idSala, idSeccion, fecha_inauguracion, estado_ocupacion)
VALUES ('SAL002','S001',DATE '2020-01-02','ocupada');
INSERT INTO Sala (idSala, idSeccion, fecha_inauguracion, estado_ocupacion)
VALUES ('SAL003','S001',DATE '2020-01-03','programada');

INSERT INTO Sala (idSala, idSeccion, fecha_inauguracion, estado_ocupacion)
VALUES ('SAL004','S002',DATE '2020-02-01','libre');
INSERT INTO Sala (idSala, idSeccion, fecha_inauguracion, estado_ocupacion)
VALUES ('SAL005','S002',DATE '2020-02-02','ocupada');
INSERT INTO Sala (idSala, idSeccion, fecha_inauguracion, estado_ocupacion)
VALUES ('SAL006','S002',DATE '2020-02-03','programada');

INSERT INTO Sala (idSala, idSeccion, fecha_inauguracion, estado_ocupacion)
VALUES ('SAL007','S003',DATE '2020-03-01','ocupada');
INSERT INTO Sala (idSala, idSeccion, fecha_inauguracion, estado_ocupacion)
VALUES ('SAL008','S003',DATE '2020-03-02','programada');
INSERT INTO Sala (idSala, idSeccion, fecha_inauguracion, estado_ocupacion)
VALUES ('SAL009','S003',DATE '2020-03-03','libre');

INSERT INTO Sala (idSala, idSeccion, fecha_inauguracion, estado_ocupacion)
VALUES ('SAL010','S001',DATE '2020-01-10','ocupada');
INSERT INTO Sala (idSala, idSeccion, fecha_inauguracion, estado_ocupacion)
VALUES ('SAL011','S002',DATE '2020-02-10','libre');
INSERT INTO Sala (idSala, idSeccion, fecha_inauguracion, estado_ocupacion)
VALUES ('SAL012','S003',DATE '2020-03-10','programada');


-------------------------------------------------------------------------------
-- 4) SALA_CIRUGIA, SALA_TRATAMIENTO, SALA_VIRTUAL, SALA_HOSPITALIZACION
-------------------------------------------------------------------------------
INSERT INTO Sala_Cirugia (idSalaCirugia, idSala)
VALUES ('SC001','SAL001');
INSERT INTO Sala_Cirugia (idSalaCirugia, idSala)
VALUES ('SC002','SAL002');
INSERT INTO Sala_Cirugia (idSalaCirugia, idSala)
VALUES ('SC003','SAL003');


INSERT INTO Sala_Tratamiento (idSalaTratamiento, idSala)
VALUES ('ST001','SAL007');
INSERT INTO Sala_Tratamiento (idSalaTratamiento, idSala)
VALUES ('ST002','SAL008');
INSERT INTO Sala_Tratamiento (idSalaTratamiento, idSala)
VALUES ('ST003','SAL009');


INSERT INTO Sala_Virtual (idSalaVirtual, idSala)
VALUES ('SV001','SAL010');
INSERT INTO Sala_Virtual (idSalaVirtual, idSala)
VALUES ('SV002','SAL011');
INSERT INTO Sala_Virtual (idSalaVirtual, idSala)
VALUES ('SV003','SAL012');


INSERT INTO Sala_Hospitalizacion (idSalaHospitalizacion, idSala, coste_base_diario, coste_extra, duracion_esperada)
VALUES ('SH001','SAL004',100.00,20.00,3);
INSERT INTO Sala_Hospitalizacion (idSalaHospitalizacion, idSala, coste_base_diario, coste_extra, duracion_esperada)
VALUES ('SH002','SAL005',120.50,35.00,5);
INSERT INTO Sala_Hospitalizacion (idSalaHospitalizacion, idSala, coste_base_diario, coste_extra, duracion_esperada)
VALUES ('SH003','SAL006',150.00,40.00,7);


-------------------------------------------------------------------------------
-- 5) VETERINARIO
-------------------------------------------------------------------------------
INSERT INTO Veterinario (idVeterinario, idEmpleado, idSala)
VALUES ('V001','E002','SAL001');
INSERT INTO Veterinario (idVeterinario, idEmpleado, idSala)
VALUES ('V002','E003','SAL002');
INSERT INTO Veterinario (idVeterinario, idEmpleado, idSala)
VALUES ('V003','E001','SAL003');


-------------------------------------------------------------------------------
-- 6) CIRUJANO
-------------------------------------------------------------------------------
INSERT INTO Cirujano (idCirujano, idEmpleado, institucion, anios_carrera)
VALUES ('CIR001','E004','Inst1',5);
INSERT INTO Cirujano (idCirujano, idEmpleado, institucion, anios_carrera)
VALUES ('CIR002','E005','Inst2',7);
INSERT INTO Cirujano (idCirujano, idEmpleado, institucion, anios_carrera)
VALUES ('CIR003','E006','Inst3',10);


-------------------------------------------------------------------------------
-- 7) ADMINISTRADOR
-------------------------------------------------------------------------------
INSERT INTO Administrador (idAdministrador, idEmpleado)
VALUES ('AD001','E007');
INSERT INTO Administrador (idAdministrador, idEmpleado)
VALUES ('AD002','E008');
INSERT INTO Administrador (idAdministrador, idEmpleado)
VALUES ('AD003','E009');


-------------------------------------------------------------------------------
-- 8) DUENIO
-------------------------------------------------------------------------------
INSERT INTO Duenio (idDuenio, nombre, apellido1, apellido2, fecha_nacimiento, fecha_alta,
                    correo, telefono, region, pais, codigo_postal, nombreCalle, tipo_via, numero)
VALUES ('D001','Juan','Perez','Soto',DATE '1985-01-01',DATE '2022-01-15',
        'd001@owner.com','700100001','RegA','PaisA',28001,'Calle Uno','Calle',10);

INSERT INTO Duenio (idDuenio, nombre, apellido1, apellido2, fecha_nacimiento, fecha_alta,
                    correo, telefono, region, pais, codigo_postal, nombreCalle, tipo_via, numero)
VALUES ('D002','Maria','Lopez','Gimenez',DATE '1990-02-02',DATE '2022-02-16',
        'd002@owner.com','700100002','RegB','PaisA',28002,'Calle Dos','Avenida',20);

INSERT INTO Duenio (idDuenio, nombre, apellido1, apellido2, fecha_nacimiento, fecha_alta,
                    correo, telefono, region, pais, codigo_postal, nombreCalle, tipo_via, numero)
VALUES ('D003','Carlos','Diaz','Martinez',DATE '1983-03-03',DATE '2022-03-17',
        'd003@owner.com','700100003','RegC','PaisB',28003,'Calle Tres','Calle',30);


-------------------------------------------------------------------------------
-- 9) TIPO_ANIMAL
-------------------------------------------------------------------------------
INSERT INTO Tipo_Animal (idTipoAnimal, nombre_corto, nombre)
VALUES ('T001','PER','Perro');
INSERT INTO Tipo_Animal (idTipoAnimal, nombre_corto, nombre)
VALUES ('T002','GAT','Gato');
INSERT INTO Tipo_Animal (idTipoAnimal, nombre_corto, nombre)
VALUES ('T003','CAB','Caballo');


-------------------------------------------------------------------------------
-- 10) ANIMAL
--  Ajustamos 'peso' para NO exceder NUMBER(4,2) (máx ~99.99).
-------------------------------------------------------------------------------
INSERT INTO Animal (idAnimal, nombre, fecha_nacimiento, raza, peso, altura, largo, ancho,
                    idDuenio, idTipoAnimal)
VALUES ('A001','Bobby',DATE '2021-01-10','Golden',10.50,40.00,80.00,20.00,'D001','T001');

INSERT INTO Animal (idAnimal, nombre, fecha_nacimiento, raza, peso, altura, largo, ancho,
                    idDuenio, idTipoAnimal)
VALUES ('A002','Mishi',DATE '2021-02-20','Siames',4.00,25.00,45.00,15.00,'D002','T002');

-- Peso se reduce de 300.0 -> 95.50 para respetar NUMBER(4,2).
INSERT INTO Animal (idAnimal, nombre, fecha_nacimiento, raza, peso, altura, largo, ancho,
                    idDuenio, idTipoAnimal)
VALUES ('A003','Furia',DATE '2020-12-01','PuraSangre',95.50,160.00,200.00,90.00,'D003','T003');


-------------------------------------------------------------------------------
-- 11) CONDICIONES_ANIMAL
-------------------------------------------------------------------------------
INSERT INTO Condiciones_Animal (idCondiciones, idAnimal, descripcion, gravedad)
VALUES ('CA001','A001','Herida leve pata',3);
INSERT INTO Condiciones_Animal (idCondiciones, idAnimal, descripcion, gravedad)
VALUES ('CA002','A002','Infección ocular',5);
INSERT INTO Condiciones_Animal (idCondiciones, idAnimal, descripcion, gravedad)
VALUES ('CA003','A003','Fractura grave',9);


-------------------------------------------------------------------------------
-- 12) CITA
-------------------------------------------------------------------------------
INSERT INTO Cita (idCita, fecha, motivo, estado, idAnimal, idAdministrador)
VALUES ('CIT001',DATE '2022-07-01','Chequeo general','programada','A001','AD001');
INSERT INTO Cita (idCita, fecha, motivo, estado, idAnimal, idAdministrador)
VALUES ('CIT002',DATE '2022-07-02','Vacunación','completada','A002','AD002');
INSERT INTO Cita (idCita, fecha, motivo, estado, idAnimal, idAdministrador)
VALUES ('CIT003',DATE '2022-07-03','Herida importante','cancelada','A003','AD003');


-------------------------------------------------------------------------------
-- 13) CONSULTA  (idConsulta <= 6 chars => CNS00X)
-------------------------------------------------------------------------------
INSERT INTO Consulta (idConsulta, idCita, fecha, idConsultaPadre)
VALUES ('CNS001','CIT001',DATE '2022-07-01',NULL);
INSERT INTO Consulta (idConsulta, idCita, fecha, idConsultaPadre)
VALUES ('CNS002','CIT001',DATE '2022-07-02',NULL);
INSERT INTO Consulta (idConsulta, idCita, fecha, idConsultaPadre)
VALUES ('CNS003','CIT002',DATE '2022-07-02',NULL);
INSERT INTO Consulta (idConsulta, idCita, fecha, idConsultaPadre)
VALUES ('CNS004','CIT002',DATE '2022-07-03',NULL);
INSERT INTO Consulta (idConsulta, idCita, fecha, idConsultaPadre)
VALUES ('CNS005','CIT003',DATE '2022-07-03',NULL);
INSERT INTO Consulta (idConsulta, idCita, fecha, idConsultaPadre)
VALUES ('CNS006','CIT003',DATE '2022-07-04',NULL);


-------------------------------------------------------------------------------
-- 14) CONSULTA_URGENCIA
-------------------------------------------------------------------------------
INSERT INTO Consulta_Urgencia (idConsultaUrgencia, idConsulta, descripcion, estadoActual)
VALUES ('CU001','CNS001','Golpe fuerte','ingresado');
INSERT INTO Consulta_Urgencia (idConsultaUrgencia, idConsulta, descripcion, estadoActual)
VALUES ('CU002','CNS002','Reacción alérgica','en tratamiento');
INSERT INTO Consulta_Urgencia (idConsultaUrgencia, idConsulta, descripcion, estadoActual)
VALUES ('CU003','CNS003','Hemorragia','en cirugía');


-------------------------------------------------------------------------------
-- 15) CONSULTA_RUTINARIA
-------------------------------------------------------------------------------
INSERT INTO Consulta_Rutinaria (idConsultaRutinaria, idConsulta, motivo, duracion_aproximada, fecha_diagnostico_aproximada)
VALUES ('CR001','CNS004','Control postvacuna',30,DATE '2022-07-04');
INSERT INTO Consulta_Rutinaria (idConsultaRutinaria, idConsulta, motivo, duracion_aproximada, fecha_diagnostico_aproximada)
VALUES ('CR002','CNS005','Revisión fractura',45,DATE '2022-07-05');
INSERT INTO Consulta_Rutinaria (idConsultaRutinaria, idConsulta, motivo, duracion_aproximada, fecha_diagnostico_aproximada)
VALUES ('CR003','CNS006','Chequeo final',20,DATE '2022-07-06');


-------------------------------------------------------------------------------
-- 16) MEDICAMENTO
-------------------------------------------------------------------------------
INSERT INTO Medicamento (idMedicamento, nombre, unidades_caja, costo)
VALUES ('M001','Analgésico',10,50.00);
INSERT INTO Medicamento (idMedicamento, nombre, unidades_caja, costo)
VALUES ('M002','Antibiótico',20,75.00);
INSERT INTO Medicamento (idMedicamento, nombre, unidades_caja, costo)
VALUES ('M003','Antiparasitario',15,30.50);


-------------------------------------------------------------------------------
-- 17) TIPO_MEDICAMENTO
-------------------------------------------------------------------------------
INSERT INTO Tipo_Medicamento (idTipoMedicamento, idMedicamento, tipo)
VALUES ('TM001','M001','Comprimido');
INSERT INTO Tipo_Medicamento (idTipoMedicamento, idMedicamento, tipo)
VALUES ('TM002','M002','Inyectable');
INSERT INTO Tipo_Medicamento (idTipoMedicamento, idMedicamento, tipo)
VALUES ('TM003','M003','Jarabe');


-------------------------------------------------------------------------------
-- 18) PROVEEDOR
-------------------------------------------------------------------------------
INSERT INTO Proveedor (idProveedor, nombre, correo, telefono, telefono_urgencias,
                       region, pais, codigo_postal, numero, tipo_via, nombre_calle)
VALUES ('PR001','FarmVet','farmvet@mail.com','900100001','900200001',
        'RegFarm1','PaisFarm1',30001,10,'Calle','Dirección1');

INSERT INTO Proveedor (idProveedor, nombre, correo, telefono, telefono_urgencias,
                       region, pais, codigo_postal, numero, tipo_via, nombre_calle)
VALUES ('PR002','VetGlobal','vetglobal@mail.com','900100002','900200002',
        'RegFarm2','PaisFarm2',30002,20,'Avenida','Dirección2');

INSERT INTO Proveedor (idProveedor, nombre, correo, telefono, telefono_urgencias,
                       region, pais, codigo_postal, numero, tipo_via, nombre_calle)
VALUES ('PR003','MediSup','medisup@mail.com','900100003','900200003',
        'RegFarm3','PaisFarm3',30003,30,'Calle','Dirección3');


-------------------------------------------------------------------------------
-- 19) PROVEIDO_POR
-------------------------------------------------------------------------------
INSERT INTO Proveido_Por (idProveidoPor, idMedicamento, idProveedor)
VALUES ('PP001','M001','PR001');
INSERT INTO Proveido_Por (idProveidoPor, idMedicamento, idProveedor)
VALUES ('PP002','M002','PR002');
INSERT INTO Proveido_Por (idProveidoPor, idMedicamento, idProveedor)
VALUES ('PP003','M003','PR003');


-------------------------------------------------------------------------------
-- 20) OPERADA_POR
-------------------------------------------------------------------------------
INSERT INTO Operada_Por (idOperadaPor, idSalaCirugia, idEmpleado)
VALUES ('OP001','SC001','E004');
INSERT INTO Operada_Por (idOperadaPor, idSalaCirugia, idEmpleado)
VALUES ('OP002','SC002','E005');
INSERT INTO Operada_Por (idOperadaPor, idSalaCirugia, idEmpleado)
VALUES ('OP003','SC003','E006');


-------------------------------------------------------------------------------
-- 21) UTILIZADA_POR
-------------------------------------------------------------------------------
INSERT INTO Utilizada_Por (idUtilizadaPor, idSalaVirtual, idVeterinario)
VALUES ('UP001','SV001','V001');
INSERT INTO Utilizada_Por (idUtilizadaPor, idSalaVirtual, idVeterinario)
VALUES ('UP002','SV002','V002');
INSERT INTO Utilizada_Por (idUtilizadaPor, idSalaVirtual, idVeterinario)
VALUES ('UP003','SV003','V003');


-------------------------------------------------------------------------------
-- 22) MONITORIZACION
-------------------------------------------------------------------------------
INSERT INTO Monitorizacion (idMonitorizacion, idSalaHospitalizacion, idVeterinario)
VALUES ('MO001','SH001','V001');
INSERT INTO Monitorizacion (idMonitorizacion, idSalaHospitalizacion, idVeterinario)
VALUES ('MO002','SH002','V002');
INSERT INTO Monitorizacion (idMonitorizacion, idSalaHospitalizacion, idVeterinario)
VALUES ('MO003','SH003','V003');


-------------------------------------------------------------------------------
-- 23) OCUPADA_POR
-------------------------------------------------------------------------------
INSERT INTO Ocupada_Por (idOcupadaPor, idSalaHospitalizacion, idAnimal)
VALUES ('OC001','SH001','A001');
INSERT INTO Ocupada_Por (idOcupadaPor, idSalaHospitalizacion, idAnimal)
VALUES ('OC002','SH002','A002');
INSERT INTO Ocupada_Por (idOcupadaPor, idSalaHospitalizacion, idAnimal)
VALUES ('OC003','SH003','A003');


-------------------------------------------------------------------------------
-- 24) ASIGNACION
-------------------------------------------------------------------------------
INSERT INTO Asignacion (idAsignacion, idSala, idConsulta, idAdministrador)
VALUES ('AS001','SAL004','CNS001','AD001');
INSERT INTO Asignacion (idAsignacion, idSala, idConsulta, idAdministrador)
VALUES ('AS002','SAL005','CNS002','AD002');
INSERT INTO Asignacion (idAsignacion, idSala, idConsulta, idAdministrador)
VALUES ('AS003','SAL006','CNS003','AD003');


-------------------------------------------------------------------------------
-- 25) RECETA
-------------------------------------------------------------------------------
INSERT INTO Receta (idReceta, idConsulta, idMedicamento, idAnimal, dosis,
                    unidades_a_suministrar, fecha_comienzo, fecha_fin)
VALUES ('R001','CNS004','M001','A001','10 mg diarios',5,
        DATE '2022-07-05',DATE '2022-07-10');

INSERT INTO Receta (idReceta, idConsulta, idMedicamento, idAnimal, dosis,
                    unidades_a_suministrar, fecha_comienzo, fecha_fin)
VALUES ('R002','CNS005','M002','A002','1 ampolla diaria',3,
        DATE '2022-07-06',DATE '2022-07-12');

INSERT INTO Receta (idReceta, idConsulta, idMedicamento, idAnimal, dosis,
                    unidades_a_suministrar, fecha_comienzo, fecha_fin)
VALUES ('R003','CNS006','M003','A003','5 ml cada 12h',2,
        DATE '2022-07-07',DATE '2022-07-09');
