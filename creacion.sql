CREATE TABLE Empleado (
    idEmpleado VARCHAR2(6),
    nombre VARCHAR2(50),
    apellido1 VARCHAR2(50),
    apellido2 VARCHAR2(50),
    DNI VARCHAR2(9) UNIQUE,
    turno VARCHAR2(5),
    salario NUMBER(5),
    telefono VARCHAR2(12),
    fecha_ingreso DATE,
    correo VARCHAR2(50),
    fecha_nacimiento DATE,
    region VARCHAR2(50),
    pais VARCHAR2(50),
    numero NUMBER(5),
    tipo_via VARCHAR2(20),
    nombreCalle VARCHAR2(50),

    CONSTRAINT PK_empleado PRIMARY KEY (idEmpleado),
    CONSTRAINT CK_empleado_turno CHECK (turno in ('dia', 'noche'))
);

CREATE TABLE Seccion (
    idSeccion VARCHAR2(6),
    proposito VARCHAR2(100),
    idDirector VARCHAR2(6) UNIQUE NOT NULL,

    CONSTRAINT PK_seccion PRIMARY KEY (idSeccion),
    CONSTRAINT FK_seccion_director FOREIGN KEY (idDirector) REFERENCES Empleado (idEmpleado) ON DELETE SET NULL
);

CREATE TABLE Sala (
    idSala VARCHAR2(6),
    idSeccion VARCHAR2(6) NOT NULL,
    fecha_inauguracion DATE,
    estado_ocupacion VARCHAR2(10),

    CONSTRAINT PK_sala PRIMARY KEY (idSala),
    CONSTRAINT FK_sala_seccion FOREIGN KEY (idSeccion) REFERENCES Seccion (idSeccion) ON DELETE CASCADE,
    CONSTRAINT CC_sala_estado CHECK (estado_ocupacion in ('programada', 'libre', 'ocupada'))
);

CREATE TABLE Sala_Cirugia (
    idSalaCirugia VARCHAR2(6),
    idSala VARCHAR2(6) UNIQUE NOT NULL,

    CONSTRAINT PK_sala_cirugia PRIMARY KEY (idSalaCirugia),
    CONSTRAINT FK_sala_cirugia_sala FOREIGN KEY (idSala) REFERENCES Sala (idSala) ON DELETE CASCADE
);

CREATE TABLE Sala_Tratamiento (
    idSalaTratamiento VARCHAR2(6),
    idSala VARCHAR2(6) UNIQUE NOT NULL,

    CONSTRAINT PK_sala_tratamiento PRIMARY KEY (idSalaTratamiento),
    CONSTRAINT FK_sala_tratamiento_sala FOREIGN KEY (idSala) REFERENCES Sala (idSala) ON DELETE CASCADE
);

CREATE TABLE Sala_Virtual (
    idSalaVirtual VARCHAR2(6),
    idSala VARCHAR2(6) UNIQUE NOT NULL,

    CONSTRAINT PK_sala_virtual PRIMARY KEY (idSalaVirtual),
    CONSTRAINT FK_sala_virtual_sala FOREIGN KEY (idSala) REFERENCES Sala (idSala) ON DELETE CASCADE
);

CREATE TABLE Sala_Hospitalizacion (
    idSalaHospitalizacion VARCHAR2(6),
    idSala VARCHAR2(6) UNIQUE NOT NULL,
    coste_base_diario NUMBER(8,2),
    coste_extra NUMBER(8,2),
    duracion_esperada NUMBER(4),

    CONSTRAINT PK_sala_hospitalizacion PRIMARY KEY (idSalaHospitalizacion),
    CONSTRAINT FK_sala_hospitalizacion_sala FOREIGN KEY (idSala) REFERENCES Sala (idSala) ON DELETE CASCADE
);

CREATE TABLE Veterinario (
    idVeterinario VARCHAR2(6),
    idEmpleado VARCHAR2(6) UNIQUE NOT NULL,
    idSala VARCHAR2(6) UNIQUE,

    CONSTRAINT PK_veterinario PRIMARY KEY (idVeterinario),
    CONSTRAINT FK_veterinario_empleado FOREIGN KEY (idEmpleado) REFERENCES Empleado (idEmpleado) ON DELETE CASCADE,
    CONSTRAINT FK_veterinario_sala FOREIGN KEY (idSala) REFERENCES Sala (idSala) ON DELETE SET NULL
);

CREATE TABLE Cirujano (
    idCirujano VARCHAR2(6),
    idEmpleado VARCHAR2(6) UNIQUE NOT NULL,
    institucion VARCHAR2(50),
    anios_carrera NUMBER(2),

    CONSTRAINT PK_cirujano PRIMARY KEY (idCirujano),
    CONSTRAINT FK_cirujano_empleado FOREIGN KEY (idEmpleado) REFERENCES Empleado (idEmpleado) ON DELETE CASCADE,
    CONSTRAINT CK_cirujano_carrera CHECK (anios_carrera > 0)
);

CREATE TABLE Administrador (
    idAdministrador VARCHAR2(6),
    idEmpleado VARCHAR2(6) UNIQUE NOT NULL,

    CONSTRAINT PK_administrador PRIMARY KEY (idAdministrador),
    CONSTRAINT FK_administrador_empleado FOREIGN KEY (idEmpleado) REFERENCES Empleado (idEmpleado) ON DELETE CASCADE
);

CREATE TABLE Duenio (
    idDuenio VARCHAR2(6),
    nombre VARCHAR2(50),
    apellido1 VARCHAR2(50),
    apellido2 VARCHAR2(50),
    fecha_nacimiento DATE,
    fecha_alta DATE,
    correo VARCHAR2(50),
    telefono VARCHAR2(12),
    region VARCHAR2(50),
    pais VARCHAR2(50),
    codigo_postal NUMBER(5),
    nombreCalle VARCHAR2(50),
    tipo_via VARCHAR2(20),
    numero NUMBER(5),
    
    CONSTRAINT PK_duenio PRIMARY KEY (idDuenio)
);

CREATE TABLE Tipo_Animal (
    idTipoAnimal VARCHAR2(6),
    nombre_corto VARCHAR2(4),
    nombre VARCHAR2(20),

    CONSTRAINT PK_tipo_animal PRIMARY KEY (idTipoAnimal),
    CONSTRAINT CC_tipo_animal_corto_unique UNIQUE (nombre_corto)
);

CREATE TABLE Animal (
    idAnimal VARCHAR2(6),
    nombre VARCHAR2(50),
    fecha_nacimiento DATE,
    raza VARCHAR2(50),
    peso NUMBER(4,2),
    altura NUMBER(7,2),
    largo NUMBER(7,2),
    ancho NUMBER(7,2),
    idDuenio VARCHAR2(6) NOT NULL,
    idTipoAnimal VARCHAR2(6) NOT NULL,

    CONSTRAINT PK_animal PRIMARY KEY (idAnimal),
    CONSTRAINT FK_animal_duenio FOREIGN KEY (idDuenio) REFERENCES Duenio (idDuenio) ON DELETE CASCADE,
    CONSTRAINT FK_animal_tipo FOREIGN KEY (idTipoAnimal) REFERENCES Tipo_Animal (idTipoAnimal) ON DELETE SET NULL,
    CONSTRAINT CK_animal_dimensiones CHECK (altura > 0 AND peso > 0 AND largo > 0 AND ancho > 0)
);

CREATE TABLE Condiciones_Animal (
    idCondiciones VARCHAR2(6),
    idAnimal VARCHAR2(6) NOT NULL,
    descripcion VARCHAR2(100),
    gravedad NUMBER(1) NOT NULL,

    CONSTRAINT PK_condiciones PRIMARY KEY (idCondiciones),
    CONSTRAINT FK_condiciones_animal FOREIGN KEY (idAnimal) REFERENCES Animal (idAnimal) ON DELETE CASCADE,
    CONSTRAINT CK_condiciones_gravedad CHECK (gravedad BETWEEN 1 AND 10)
);

CREATE TABLE Cita (
    idCita VARCHAR2(6),
    fecha DATE,
    motivo VARCHAR2(150),
    estado VARCHAR2(10),
    idAnimal VARCHAR2(6) NOT NULL,
    idAdministrador VARCHAR2(6) NOT NULL,

    CONSTRAINT PK_cita PRIMARY KEY (idCita),
    CONSTRAINT FK_cita_animal FOREIGN KEY (idAnimal) REFERENCES Animal (idAnimal) ON DELETE SET NULL,
    CONSTRAINT FK_cita_admin FOREIGN KEY (idAdministrador) REFERENCES Administrador (idAdministrador) ON DELETE SET NULL,
    CONSTRAINT CK_cita_estado CHECK (estado in ('programada', 'completada', 'cancelada'))
);

CREATE TABLE Consulta (
    idConsulta VARCHAR2(6),
    idCita VARCHAR2(6) NOT NULL,
    fecha DATE,
    idConsultaPadre VARCHAR2(6),

    CONSTRAINT PK_consulta PRIMARY KEY (idConsulta),
    CONSTRAINT FK_consulta_cita FOREIGN KEY (idCita) REFERENCES Cita (idCita) ON DELETE CASCADE,
    CONSTRAINT FK_consulta_padre FOREIGN KEY (idConsultaPadre) REFERENCES Consulta (idConsulta) ON DELETE SET NULL,
    CONSTRAINT CC_consulta_padre CHECK (idConsultaPadre != idConsulta)
);


CREATE TABLE Consulta_Urgencia (
    idConsultaUrgencia VARCHAR2(6),
    idConsulta VARCHAR2(6) UNIQUE NOT NULL,
    descripcion VARCHAR2(150),
    estadoActual VARCHAR2(14),

    CONSTRAINT PK_consultaurgencia PRIMARY KEY (idConsultaUrgencia),
    CONSTRAINT FK_consultaurgencia_consulta FOREIGN KEY (idConsulta) REFERENCES Consulta (idConsulta) ON DELETE CASCADE,
    CONSTRAINT CC_consultaurgencia_estadoactual CHECK (estadoActual in ('ingresado', 'en tratamiento', 'en cirugía', 'derivado', 'en observación', 'fallecido', 'dado de alta'))
);

CREATE TABLE Consulta_Rutinaria (
    idConsultaRutinaria VARCHAR2(6),
    idConsulta VARCHAR2(6) UNIQUE NOT NULL,
    motivo VARCHAR2(150),
    duracion_aproximada NUMBER(4),
    fecha_diagnostico_aproximada DATE,

    CONSTRAINT PK_consultarutinaria PRIMARY KEY (idConsultaRutinaria),
    CONSTRAINT FK_consultarutinaria_consulta FOREIGN KEY (idConsulta) REFERENCES Consulta (idConsulta) ON DELETE CASCADE
);

CREATE TABLE Medicamento (
    idMedicamento VARCHAR2(6),
    nombre VARCHAR2(50),
    unidades_caja NUMBER(3),
    costo NUMBER(8,2),

    CONSTRAINT PK_medicamento PRIMARY KEY (idMedicamento),
    CONSTRAINT CC_medicamento_may_0 CHECK (unidades_caja > 0 AND costo > 0)
);

CREATE TABLE Tipo_Medicamento (
    idTipoMedicamento VARCHAR2(6),
    idMedicamento VARCHAR2(6) NOT NULL,
    tipo VARCHAR2(50) NOT NULL,

    CONSTRAINT PK_tipo_medicamento PRIMARY KEY (idTipoMedicamento),
    CONSTRAINT FK_tipo_med_medicamento FOREIGN KEY (idMedicamento) REFERENCES Medicamento (idMedicamento) ON DELETE CASCADE,
    CONSTRAINT CC_tipo_med_unico UNIQUE (idMedicamento, tipo)
);

CREATE TABLE Proveedor (
    idProveedor VARCHAR2(6),
    nombre VARCHAR2(50),
    correo VARCHAR2(50),
    telefono VARCHAR2(12),
    telefono_urgencias VARCHAR2(12),
    region VARCHAR2(50),
    pais VARCHAR2(50),
    codigo_postal NUMBER(5),
    numero NUMBER(5),
    tipo_via VARCHAR2(20),
    nombre_calle VARCHAR2(50),

    CONSTRAINT PK_proveedor PRIMARY KEY (idProveedor),
    CONSTRAINT CK_proveedor_unique UNIQUE (nombre, correo)
);

CREATE TABLE Operada_Por (
    idOperadaPor VARCHAR2(6),
    idSalaCirugia VARCHAR2(6) NOT NULL,
    idEmpleado VARCHAR2(6) NOT NULL,

    CONSTRAINT PK_operada_por PRIMARY KEY (idOperadaPor),
    CONSTRAINT FK_operada_por_sala FOREIGN KEY (idSalaCirugia) REFERENCES Sala_Cirugia (idSalaCirugia) ON DELETE CASCADE,
    CONSTRAINT FK_operada_por_empleado FOREIGN KEY (idEmpleado) REFERENCES Empleado (idEmpleado) ON DELETE CASCADE,
    CONSTRAINT CK_operada_por_unique UNIQUE (idSalaCirugia, idEmpleado)
);

CREATE TABLE Utilizada_Por (
    idUtilizadaPor VARCHAR2(6),
    idSalaVirtual VARCHAR2(6) NOT NULL,
    idVeterinario VARCHAR2(6) NOT NULL,

    CONSTRAINT PK_utilizada_por PRIMARY KEY (idUtilizadaPor),
    CONSTRAINT FK_utilizada_por_sala FOREIGN KEY (idSalaVirtual) REFERENCES Sala_Virtual (idSalaVirtual) ON DELETE CASCADE,
    CONSTRAINT FK_utilizada_por_veterinario FOREIGN KEY (idVeterinario) REFERENCES Veterinario (idVeterinario) ON DELETE CASCADE,
    CONSTRAINT CK_utilizada_por_unique UNIQUE (idSalaVirtual, idVeterinario)
);

CREATE TABLE Monitorizacion (
    idMonitorizacion VARCHAR2(6),
    idSalaHospitalizacion VARCHAR2(6) NOT NULL,
    idVeterinario VARCHAR2(6) NOT NULL,

    CONSTRAINT PK_monitorizacion PRIMARY KEY (idMonitorizacion),
    CONSTRAINT FK_monitorizacion_sala FOREIGN KEY (idSalaHospitalizacion) REFERENCES Sala_Hospitalizacion (idSalaHospitalizacion) ON DELETE CASCADE,
    CONSTRAINT FK_monitorizacion_veterinario FOREIGN KEY (idVeterinario) REFERENCES Veterinario (idVeterinario) ON DELETE CASCADE,
    CONSTRAINT CK_monitorizacion_unique UNIQUE (idSalaHospitalizacion, idVeterinario)
);

CREATE TABLE Ocupada_Por (
    idOcupadaPor VARCHAR2(6),
    idSalaHospitalizacion VARCHAR2(6) NOT NULL,
    idAnimal VARCHAR2(6) NOT NULL,

    CONSTRAINT PK_ocupada_por PRIMARY KEY (idOcupadaPor),
    CONSTRAINT FK_ocupada_por_sala FOREIGN KEY (idSalaHospitalizacion) REFERENCES Sala_Hospitalizacion (idSalaHospitalizacion) ON DELETE CASCADE,
    CONSTRAINT FK_ocupada_por_animal FOREIGN KEY (idAnimal) REFERENCES Animal (idAnimal) ON DELETE CASCADE,
    CONSTRAINT CK_ocupada_por_unique UNIQUE (idSalaHospitalizacion, idAnimal)
);

CREATE TABLE Asignacion (
    idAsignacion VARCHAR2(6),
    idSala VARCHAR2(6) NOT NULL,
    idConsulta VARCHAR2(6) UNIQUE NOT NULL,
    idAdministrador VARCHAR2(6),

    CONSTRAINT PK_asignacion PRIMARY KEY (idAsignacion),
    CONSTRAINT FK_asignacion_sala FOREIGN KEY (idSala) REFERENCES Sala (idSala) ON DELETE CASCADE,
    CONSTRAINT FK_asignacion_consulta FOREIGN KEY (idConsulta) REFERENCES Consulta (idConsulta) ON DELETE CASCADE,
    CONSTRAINT FK_asignacion_administrador FOREIGN KEY (idAdministrador) REFERENCES Administrador (idAdministrador) ON DELETE SET NULL
);

CREATE TABLE Receta (
    idReceta VARCHAR2(6),
    idConsulta VARCHAR2(6) NOT NULL,
    idMedicamento VARCHAR2(6) NOT NULL,
    idAnimal VARCHAR2(6),
    dosis VARCHAR2(50),
    unidades_a_suministrar NUMBER(3), 
    fecha_comienzo DATE,
    fecha_fin DATE,

    CONSTRAINT PK_receta PRIMARY KEY (idReceta),
    CONSTRAINT FK_receta_animal FOREIGN KEY (idAnimal) REFERENCES Animal (idAnimal) ON DELETE SET NULL, 
    CONSTRAINT FK_receta_consulta FOREIGN KEY (idConsulta) REFERENCES Consulta (idConsulta) ON DELETE CASCADE,
    CONSTRAINT FK_receta_medicamento FOREIGN KEY (idMedicamento) REFERENCES Medicamento (idMedicamento) ON DELETE CASCADE,
    CONSTRAINT CC_receta_unique UNIQUE (idConsulta, idMedicamento),
    CONSTRAINT CC_receta_may_0 CHECK (unidades_a_suministrar > 0),
    CONSTRAINT CC_receta_fechas CHECK (fecha_fin >= fecha_comienzo)
);

CREATE TABLE Proveido_Por (
    idProveidoPor VARCHAR2(6),
    idMedicamento VARCHAR2(6) NOT NULL,
    idProveedor VARCHAR2(6) NOT NULL,

    CONSTRAINT PK_proveido_por PRIMARY KEY (idProveidoPor),
    CONSTRAINT FK_proveido_por_medicamento FOREIGN KEY (idMedicamento) REFERENCES Medicamento (idMedicamento) ON DELETE CASCADE,
    CONSTRAINT FK_proveido_por_proveedor FOREIGN KEY (idProveedor) REFERENCES Proveedor (idProveedor) ON DELETE CASCADE,
    CONSTRAINT CC_proveido_por_unique UNIQUE (idMedicamento, idProveedor)
);