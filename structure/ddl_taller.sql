-- GENERAR EL DDL

DROP DATABASE IF EXISTS proyecto_reservas ;

CREATE DATABASE proyecto_reservas;

USE proyecto_reservas;

-- Tabla RESERVA
CREATE TABLE RESERVA (
    IDRESERVA INT PRIMARY KEY AUTO_INCREMENT,
    IDCLIENTE INT NOT NULL,
    IDPUESTOTALLER INT NOT NULL,
    IDEMPLEADO INT NOT NULL,
    FECHA DATETIME NOT NULL,
    CANCELACION DATETIME DEFAULT NULL
);

-- Tabla CLIENTE
CREATE TABLE CLIENTE (
    IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR(100) DEFAULT 'USUARIO_UNKNOW' NOT NULL,
    TELEFONO VARCHAR(20) NOT NULL,
    CORREO VARCHAR(100) UNIQUE NOT NULL,
    DNI VARCHAR(20) NOT NULL
);

-- Tabla EMPLEADO
CREATE TABLE EMPLEADO (
    IDEMPLEADO INT PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR(100) NOT NULL,
    TELEFONO VARCHAR(20) NOT NULL,
    CORREO VARCHAR(100) NOT NULL,
    DNI VARCHAR(20) NOT NULL,
    IDTIPOTRABAJO INT NOT NULL,
    IDTALLER INT NOT NULL
);

-- Tabla DUEÑO
CREATE TABLE DUENO (
    IDDUENO INT PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR(100) NOT NULL,
    CORREO VARCHAR(100) NOT NULL,
    DNI VARCHAR(20) NOT NULL,
    TELEFONO VARCHAR(20)
);

-- Tabla TIPOTRABAJO
CREATE TABLE TIPO_TRABAJO (
    IDTIPOTRABAJO INT PRIMARY KEY AUTO_INCREMENT,
    TIPO_TRABAJO VARCHAR(50) NOT NULL,
    DURACIONPROM INT NOT NULL
);

-- Tabla TALLER
CREATE TABLE TALLER (
    IDTALLER INT PRIMARY KEY AUTO_INCREMENT,
    IDDUENO INT NOT NULL,
    NOMBRE VARCHAR(100) NOT NULL,
    DIRECCION VARCHAR(255) NOT NULL,
    TELEFONO VARCHAR(20)
);

-- Tabla PUESTO_TRABAJO
CREATE TABLE PUESTO_TRABAJO (
    IDPUESTO INT PRIMARY KEY AUTO_INCREMENT,
	TIPO_PUESTO VARCHAR(50) NOT NULL
);

-- Tabla PUESTO_TRABAJO_TALLER
CREATE TABLE PUESTO_TRABAJO_TALLER (
    IDPUESTOTALLER INT PRIMARY KEY AUTO_INCREMENT,
    IDTALLER INT NOT NULL,
    IDPUESTO INT NOT NULL,
    IDTIPOTRABAJO INT NOT NULL,
    CAPACIDAD INT NOT NULL
);



-- FOREIGN KEYS DEFINITION

-- EMPLEADOS

ALTER TABLE EMPLEADO
    ADD CONSTRAINT FK_EMPLEADO_CLIENTE
    FOREIGN KEY (IDTALLER) REFERENCES TALLER(IDTALLER);

ALTER TABLE EMPLEADO
    ADD CONSTRAINT FK_EMPLEADO_TRABAJO
    FOREIGN KEY (IDTIPOTRABAJO) REFERENCES TIPO_TRABAJO(IDTIPOTRABAJO);

-- TALLERES

ALTER TABLE TALLER
    ADD CONSTRAINT FK_DUENO_TALLER
    FOREIGN KEY (IDDUENO) REFERENCES DUENO(IDDUENO);
    
-- PUESTOS DE TRABAJO DE LOS TALLERES

ALTER TABLE PUESTO_TRABAJO_TALLER
    ADD CONSTRAINT FK_PTT_PUESTO
    FOREIGN KEY (IDPUESTO) REFERENCES PUESTO_TRABAJO(IDPUESTO);
   
ALTER TABLE PUESTO_TRABAJO_TALLER
    ADD CONSTRAINT FK_PTT_TALLER
    FOREIGN KEY (IDTALLER) REFERENCES TALLER(IDTALLER);
   
ALTER TABLE PUESTO_TRABAJO_TALLER
    ADD CONSTRAINT FK_PTT_TIPO_TRABAJO
    FOREIGN KEY (IDTIPOTRABAJO) REFERENCES TIPO_TRABAJO(IDTIPOTRABAJO);
    
-- RESERVAS

ALTER TABLE RESERVA
    ADD CONSTRAINT FK_RESERVA_TRABAJO
    FOREIGN KEY (IDPUESTOTALLER) REFERENCES PUESTO_TRABAJO_TALLER(IDPUESTOTALLER);

ALTER TABLE RESERVA
    ADD CONSTRAINT FK_RESERVA_CLIENTE
    FOREIGN KEY (IDCLIENTE) REFERENCES CLIENTE(IDCLIENTE);

ALTER TABLE RESERVA
    ADD CONSTRAINT FK_RESERVA_EMPLEADO
    FOREIGN KEY (IDEMPLEADO) REFERENCES EMPLEADO(IDEMPLEADO);
