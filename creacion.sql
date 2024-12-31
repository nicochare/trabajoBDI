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
    tipovia VARCHAR2(20),
    nombreCalle VARCHAR2(50),

    CONSTRAINT PK_empleado PRIMARY KEY (idEmpleado),
    CONSTRAINT CK_empleado_turno CHECK (turno in ('dia', 'noche'))
);

CREATE TABLE Seccion (
    idSeccion VARCHAR2(6),
    proposito VARCHAR2(100),
    idDirector VARCHAR2(6) UNIQUE NOT NULL,

    CONSTRAINT PK_seccion PRIMARY KEY (idSeccion),
    CONSTRAINT FK_seccion_director FOREIGN KEY (idDirector) REFERENCES Empleado (idEmpleado)
);

CREATE TABLE Sala (
    idSala VARCHAR2(6),
    idSeccion VARCHAR2(6) NOT NULL,
    fecha_inauguracion DATE,
    estado_ocupacion VARCHAR2(10),

    CONSTRAINT PK_sala PRIMARY KEY (idSala),
    CONSTRAINT FK_sala_seccion FOREIGN KEY (idSeccion) REFERENCES Seccion (idSeccion),
    CONSTRAINT CC_sala_estado CHECK (estado_ocupacion in ('programada', 'libre', 'ocupada'))
);

CREATE TABLE Sala_Cirugia (
    idSalaCirugia VARCHAR2(6),
    idSala VARCHAR2(6) UNIQUE NOT NULL,

    CONSTRAINT PK_sala_cirugia PRIMARY KEY (idSalaCirugia),
    CONSTRAINT FK_sala_cirugia_sala FOREIGN KEY (idSala) REFERENCES Sala (idSala)
);

CREATE TABLE Sala_Tratamiento (
    idSalaTratamiento VARCHAR2(6),
    idSala VARCHAR2(6) UNIQUE NOT NULL,

    CONSTRAINT PK_sala_tratamiento PRIMARY KEY (idSalaTratamiento),
    CONSTRAINT FK_sala_tratamiento_sala FOREIGN KEY (idSala) REFERENCES Sala (idSala)
);

CREATE TABLE Sala_Virtual (
    idSalaVirtual VARCHAR2(6),
    idSala VARCHAR2(6) UNIQUE NOT NULL,

    CONSTRAINT PK_sala_virtual PRIMARY KEY (idSalaVirtual),
    CONSTRAINT FK_sala_virtual_sala FOREIGN KEY (idSala) REFERENCES Sala (idSala)
);

CREATE TABLE Sala_Hospitalizacion (
    idSalaHospitalizacion VARCHAR2(6),
    idSala VARCHAR2(6) UNIQUE NOT NULL,
    coste_base_diario NUMBER(8,2),
    coste_extra NUMBER(8,2),
    duracion_esperada NUMBER(4),

    CONSTRAINT PK_sala_hospitalizacion PRIMARY KEY (idSalaHospitalizacion),
    CONSTRAINT FK_sala_hospitalizacion_sala FOREIGN KEY (idSala) REFERENCES Sala (idSala)
);

CREATE TABLE Veterinario (
    idVeterinario VARCHAR2(6),
    idEmpleado VARCHAR2(6) UNIQUE NOT NULL,
    idSala VARCHAR2(6) UNIQUE,

    CONSTRAINT PK_veterinario PRIMARY KEY (idVeterinario),
    CONSTRAINT FK_vet_empleado FOREIGN KEY (idEmpleado) REFERENCES Empleado (idEmpleado),
    CONSTRAINT FK_vet_sala FOREIGN KEY (idSala) REFERENCES Sala (idSala)
);

CREATE TABLE Cirujano (
    idCirujano VARCHAR2(6),
    idEmpleado VARCHAR2(6) UNIQUE NOT NULL,
    institucion VARCHAR2(50),
    anios_carrera NUMBER(2),

    CONSTRAINT PK_cirujano PRIMARY KEY (idCirujano),
    CONSTRAINT FK_cirujano_empleado FOREIGN KEY (idEmpleado) REFERENCES Empleado (idEmpleado),
    CONSTRAINT CK_cirujano_carrera CHECK (anios_carrera > 0)
);

CREATE TABLE Administrador (
    idAdministrador VARCHAR2(6),
    idEmpleado VARCHAR2(6) UNIQUE NOT NULL,

    CONSTRAINT PK_administrador PRIMARY KEY (idAdministrador),
    CONSTRAINT FK_admin_empleado FOREIGN KEY (idEmpleado) REFERENCES Empleado (idEmpleado)
);

CREATE TABLE Duenio(
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
    tipovia VARCHAR2(20),
    numero NUMBER(5),
    
    CONSTRAINT PK_duenio PRIMARY KEY (idDuenio)
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

    CONSTRAINT PK_animal PRIMARY KEY (idAnimal),
    CONSTRAINT FK_animal_duenio FOREIGN KEY (idDuenio) REFERENCES Duenio (idDuenio),
    CONSTRAINT CK_animal_dimensiones CHECK (altura > 0 AND peso > 0 AND largo > 0 AND ancho > 0),
);

CREATE TABLE Condiciones_Animal (
    idCondiciones VARCHAR2(6),
    idAnimal VARCHAR2(6) NOT NULL,
    descripcion VARCHAR2(100),
    gravedad NUMBER(1) NOT NULL,

    CONSTRAINT PK_condiciones PRIMARY KEY (idCondiciones),
    CONSTRAINT FK_cond_animal FOREIGN KEY (idAnimal) REFERENCES Animal (idAnimal),
    CONSTRAINT CK_cond_gravedad CHECK (gravedad BETWEEN 1 AND 10),
);

CREATE TABLE Perro (
    idPerro VARCHAR2(6),
    idAnimal VARCHAR2(6) UNIQUE NOT NULL,
    
    CONSTRAINT PK_perro PRIMARY KEY (idPerro),
    CONSTRAINT FK_perro_animal FOREIGN KEY (idAnimal) REFERENCES Animal (idAnimal)
);

CREATE TABLE Gato (
    idGato VARCHAR2(6),
    idAnimal VARCHAR2(6) UNIQUE NOT NULL,
    
    CONSTRAINT PK_gato PRIMARY KEY (idGato),
    CONSTRAINT FK_gato_animal FOREIGN KEY (idAnimal) REFERENCES Animal (idAnimal)
);

CREATE TABLE Conejo (
    idConejo VARCHAR2(6),
    idAnimal VARCHAR2(6) UNIQUE NOT NULL,
    
    CONSTRAINT PK_conejo PRIMARY KEY (idConejo),
    CONSTRAINT FK_conejo_animal FOREIGN KEY (idAnimal) REFERENCES Animal (idAnimal)
);

CREATE TABLE Tortuga (
    idTortuga VARCHAR2(6),
    idAnimal VARCHAR2(6) UNIQUE NOT NULL,
    
    CONSTRAINT PK_tortuga PRIMARY KEY (idTortuga),
    CONSTRAINT FK_tortuga_animal FOREIGN KEY (idAnimal) REFERENCES Animal (idAnimal)
);

CREATE TABLE Cita (
    idCita VARCHAR2(6),
    fecha DATE,
    motivo VARCHAR2(150),
    estado VARCHAR2(10),
    idAnimal VARCHAR2(6) UNIQUE NOT NULL,
    idAdministrador VARCHAR2(6) UNIQUE NOT NULL,

    CONSTRAINT PK_cita PRIMARY KEY (idCita),
    CONSTRAINT FK_cita_animal FOREIGN KEY (idAnimal) REFERENCES Animal (idAnimal),
    CONSTRAINT FK_cita_admin FOREIGN KEY (idAdministrador) REFERENCES Administrador (idAdministrador),
    CONSTRAINT CK_cita_estado CHECK (estado in ('programada', 'completada', 'cancelada'))
);

CREATE TABLE Consulta (
    idConsulta VARCHAR2(6),
    idCita VARCHAR2(6) NOT NULL,
    fecha DATE,
    idConsultaPadre VARCHAR2(6),

    CONSTRAINT PK_consulta PRIMARY KEY (idConsulta),
    CONSTRAINT FK_consulta_cita FOREIGN KEY (idCita) REFERENCES Cita (idCita),
    CONSTRAINT FK_consulta_padre FOREIGN KEY (idConsultaPadre) REFERENCES Consulta (idConsulta)
);

