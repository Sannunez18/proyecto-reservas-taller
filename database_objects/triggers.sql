USE proyecto_reservas;

-- Trigger para almacenar registros modificados si la reserva se cancela:


CREATE TABLE 
    LOG_CAMBIOS (
        ID_LOG INT NOT NULL AUTO_INCREMENT PRIMARY KEY,   
        TABLA_AFECTADA VARCHAR (50),
        ACCION VARCHAR(50),
        FECHA DATETIME,
        IDCLIENTE INT,
        USUARIO VARCHAR(50)
    );



DELIMITER //

CREATE TRIGGER after_insert_cliente_trigger
AFTER INSERT ON CLIENTE
FOR EACH ROW
BEGIN
    INSERT INTO LOG_CAMBIOS (TABLA_AFECTADA, ACCION, FECHA, IDCLIENTE, USUARIO)
    VALUES ('CLIENTE', 'INSERT', NOW() , NEW.IDCLIENTE,USER());
END //

DELIMITER ;



--  Trigger para almacenar registros modificados si la reserva se cancela

DELIMITER //
    
CREATE TRIGGER after_update_cancelacion_reserva_trigger
AFTER UPDATE ON RESERVA
FOR EACH ROW
BEGIN
    IF OLD.CANCELACION IS NULL AND NEW.CANCELACION IS NOT NULL THEN
        INSERT INTO LOG_CAMBIOS (TABLA_AFECTADA, ACCION, FECHA, IDCLIENTE, USUARIO)
        VALUES ('RESERVA', 'CANCELACION', NOW(), NEW.IDCLIENTE, USER());
    END IF;
END //
    
DELIMITER ;


-- Trigger para verificar si el correo electrónico de un cliente es único al insertar un nuevo cliente

DELIMITER //

CREATE TRIGGER before_insert_cliente_trigger
BEFORE INSERT ON CLIENTE
FOR EACH ROW
BEGIN
    DECLARE correo_count INT;
    
    SELECT COUNT(*) INTO correo_count
        FROM CLIENTE
    WHERE CORREO = NEW.CORREO;
    
    IF correo_count > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El correo electrónico ya está en uso.';
    END IF;
END //

DELIMITER ;


-- Trigger para verificar si un cliente ya tiene una reserva hecha en la misma hora y taller y que no esté cancelada la reserva:


DELIMITER //

CREATE TRIGGER before_insert_reserva_trigger
BEFORE INSERT ON RESERVA
FOR EACH ROW
BEGIN
    DECLARE reserva_count INT;
    
    SELECT COUNT(*) INTO reserva_count
        FROM RESERVA
    WHERE IDCLIENTE = NEW.IDCLIENTE
        AND IDPUESTOTALLER = NEW.IDPUESTOTALLER
        AND FECHA = NEW.FECHA
        AND CANCELACION IS NULL;
        
    IF reserva_count > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El cliente ya tiene una reserva en la misma hora y taller.';
    END IF;
END //

DELIMITER ;

-- Tirgger para verificar si la FECHA de cancelación es anterior a la FECHA de reserva en update de datos.

DELIMITER //

CREATE TRIGGER before_reserva_update
BEFORE UPDATE ON RESERVA
FOR EACH ROW
BEGIN
    IF NEW.CANCELACION IS NOT NULL AND NEW.CANCELACION >= NEW.FECHA THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La FECHA de cancelación no puede ser posterior a la FECHA de reserva';
    END IF;
END//

DELIMITER ;
