USE proyecto_reservas;

SET GLOBAL local_infile = true;

-- INGESTA CLIENTES

LOAD DATA LOCAL INFILE '/data_csv/clientes.csv'
INTO TABLE CLIENTE
FIELDS TERMINATED BY ','  ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(IDCLIENTE,NOMBRE,TELEFONO,CORREO,DNI);

-- INGESTA DUEÑO

LOAD DATA LOCAL INFILE '/data_csv/dueño.csv'
INTO TABLE DUENO
FIELDS TERMINATED BY ','  ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(IDDUENO,NOMBRE,CORREO,DNI,TELEFONO);

-- INGESTA TIPOS DE TABAJO

INSERT INTO TIPO_TRABAJO (IDTIPOTRABAJO,TIPO_TRABAJO,DURACIONPROM) VALUES
(1,'Alineación',600),
(2,'Balanceo',300),
(3,'Mecánica simple',14400),
(4,'Mecánica pesada', 28800),
(5,'Motor', 226800),
(6,'Chasis competición', 226800),
(7,'Motor competición',288000),
(8,'Programación ECU competición',115200);

-- INGESTA TALLERES

LOAD DATA  LOCAL INFILE '/data_csv/talleres.csv'
INTO TABLE TALLER
FIELDS TERMINATED BY ','  ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(IDTALLER,IDDUENO,NOMBRE,DIRECCION,TELEFONO);

-- INGESTA EMPLEADOS

LOAD DATA  LOCAL INFILE '/data_csv/empleados.csv'
INTO TABLE EMPLEADO
FIELDS TERMINATED BY ','  ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(IDEMPLEADO,NOMBRE,TELEFONO,CORREO,DNI,IDTIPOTRABAJO,IDTALLER);


-- INGESTA PUESTOS DE TRABAJO

INSERT INTO PUESTO_TRABAJO (IDPUESTO,TIPO_PUESTO) VALUES
(1,'Alineador'),
(2,'Balanceador'),
(3,'Mecánico simple'),
(4,'Mecánico pesada'),
(5,'Motorista'),
(6,'Chasisista competición'),
(7,'Motorista competición'),
(8,'Programador ECU competición');

-- INGESTA PUESTO_TRABAJO_TALLER

LOAD DATA  LOCAL INFILE '/data_csv/puesto_trabajo_taller.csv'
INTO TABLE PUESTO_TRABAJO_TALLER
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(IDPUESTOTALLER, IDTALLER, IDPUESTO, IDTIPOTRABAJO, CAPACIDAD);

-- INGESTA RESERVA

LOAD DATA  LOCAL INFILE '/data_csv/reservas.csv'
INTO TABLE RESERVA
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(IDRESERVA, IDCLIENTE, IDPUESTOTALLER, IDEMPLEADO, @FECHA, @CANCELACION)
SET 
    FECHA = @FECHA,
    CANCELACION = CASE 
        WHEN @CANCELACION = '' THEN NULL
        WHEN @CANCELACION > @FECHA THEN @CANCELACION
        ELSE NULL
    END;
