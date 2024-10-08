USE proyecto_reservas;

SET GLOBAL local_infile = true;
SET foreign_key_checks = 0;

-- 1-INGESTA CLIENTES

LOAD DATA LOCAL INFILE '/data_csv/clientes.csv'
INTO TABLE CLIENTE
FIELDS TERMINATED BY ','  ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(IDCLIENTE,NOMBRE,TELEFONO,CORREO,DNI);

-- 2-INGESTA DUEÑO

LOAD DATA LOCAL INFILE '/data_csv/dueño.csv'
INTO TABLE DUENO
FIELDS TERMINATED BY ','  ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(IDDUENO,NOMBRE,CORREO,DNI,TELEFONO);

-- 3-INGESTA TIPOS DE TABAJO

INSERT INTO TIPO_TRABAJO (IDTIPOTRABAJO,TIPO_TRABAJO,DURACIONPROM) VALUES
(1,'Alineación',600),
(2,'Balanceo',300),
(3,'Mecánica simple',14400),
(4,'Mecánica pesada', 28800),
(5,'Motor', 226800),
(6,'Chasis competición', 226800),
(7,'Motor competición',288000),
(8,'Programación ECU competición',115200);

-- 4-INGESTA TALLERES

LOAD DATA  LOCAL INFILE '/data_csv/talleres.csv'
INTO TABLE TALLER
FIELDS TERMINATED BY ','  ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(IDTALLER,IDDUENO,NOMBRE,DIRECCION,TELEFONO);

-- 5-INGESTA EMPLEADOS

LOAD DATA  LOCAL INFILE '/data_csv/empleados.csv'
INTO TABLE EMPLEADO
FIELDS TERMINATED BY ','  ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(IDEMPLEADO,NOMBRE,TELEFONO,CORREO,DNI,IDTIPOTRABAJO,IDTALLER);


-- 6-INGESTA PUESTOS DE TRABAJO

INSERT INTO PUESTO_TRABAJO (IDPUESTO,TIPO_PUESTO) VALUES
(1,'Alineador'),
(2,'Balanceador'),
(3,'Mecánico simple'),
(4,'Mecánico pesada'),
(5,'Motorista'),
(6,'Chasisista competición'),
(7,'Motorista competición'),
(8,'Programador ECU competición');

-- 7-INGESTA PUESTO_TRABAJO_TALLER

CREATE TEMPORARY TABLE temp_puesto_trabajo_taller (
    IDPUESTOTALLER INT,
    IDTALLER INT,
    IDTIPOTRABAJO INT
);

LOAD DATA  LOCAL INFILE '/data_csv/puesto_trabajo_taller.csv'
INTO TABLE PUESTO_TRABAJO_TALLER
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(IDPUESTOTALLER, IDTALLER, IDTIPOTRABAJO);

INSERT INTO PUESTO_TRABAJO_TALLER (IDPUESTOTALLER, IDTALLER, IDTIPOTRABAJO, IDPUESTO, CAPACIDAD)
SELECT 
    IDPUESTOTALLER, 
    IDTALLER, 
    IDTIPOTRABAJO, 
    IDTIPOTRABAJO AS IDPUESTO,  -- Para establecer IDPUESTO igual a IDTIPOTRABAJO para mantener lógica.
    8 * 3600 * 20 AS CAPACIDAD  -- Establecer CAPACIDAD que es igual para todos.
FROM temp_puesto_trabajo_taller;
DROP TEMPORARY TABLE temp_puesto_trabajo_taller;

-- 8-INGESTA RESERVA

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
        WHEN @CANCELACION < @FECHA THEN @CANCELACION
        ELSE NULL
    END;

SET foreign_key_checks = 1;
