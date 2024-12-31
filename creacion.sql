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
    CONSTRAINT CK_empleado_turno CHECK (turno in ("dia", "noche"))
);

-- MOVER DESPUES DE SALA
CREATE TABLE Veterinario (
    idVeterinario VARCHAR2(6),
    idEmpleado VARCHAR2(6) UNIQUE,
    idSala VARCHAR2(6) UNIQUE,

    CONSTRAINT PK_veterinario PRIMARY KEY (idVeterinario),
    CONSTRAINT FK_vet_empleado FOREIGN KEY (idEmpleado) REFERENCES Empleado (idEmpleado),
    CONSTRAINT FK_vet_sala FOREIGN KEY (idSala) REFERENCES Sala (idSala)
);

CREATE TABLE Cirujano (
    idCirujano VARCHAR2(6),
    idEmpleado VARCHAR2(6) UNIQUE,
    institucion VARCHAR2(50),
    anios_carrera NUMBER(2),

    CONSTRAINT PK_cirujano PRIMARY KEY (idCirujano),
    CONSTRAINT FK_cirujano_empleado FOREIGN KEY (idEmpleado) REFERENCES Empleado (idEmpleado),
    CONSTRAINT CK_cirujano_carrera CHECK (anios_carrera > 0)
);

CREATE TABLE Administrador (
    idAdministrador VARCHAR2(6),
    idEmpleado VARCHAR2(6) UNIQUE,

    CONSTRAINT PK_administrador PRIMARY KEY (idAdministrador),
    CONSTRAINT FK_admin_empleado FOREIGN KEY (idEmpleado) REFERENCES Empleado (idEmpleado)
);