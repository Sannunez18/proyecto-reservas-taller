USE proyecto_reservas;

-- Vista para KPIs de fechas de reservas:
-- Esta vista mostrará estadísticas sobre las reservas realizadas en diferentes fechas, como el número total de reservas por día, por semana o por mes.
CREATE VIEW
    ReservasPorFecha AS
SELECT
    DATE (FECHA) AS Fecha,
    COUNT(*) AS TotalReservas
FROM
    RESERVA
GROUP BY
    DATE (FECHA);

-- Vista para cantidad de reservas por taller:
-- Esta vista mostrará la cantidad de reservas realizadas para cada taller.
CREATE VIEW
    ReservasPorTaller AS
SELECT
    PUESTO_TRABAJO_TALLER.IDTALLER,
    TIPO_TRABAJO.TIPO_TRABAJO,
    COUNT(RESERVA.IDRESERVA) AS TotalReservas
FROM
    PUESTO_TRABAJO_TALLER
    LEFT JOIN RESERVA ON PUESTO_TRABAJO_TALLER.IDPUESTOTALLER = RESERVA.IDPUESTOTALLER
    INNER JOIN TIPO_TRABAJO ON PUESTO_TRABAJO_TALLER.IDTIPOTRABAJO = TIPO_TRABAJO.IDTIPOTRABAJO
GROUP BY
    PUESTO_TRABAJO_TALLER.IDTALLER,
    TIPO_TRABAJO.TIPO_TRABAJO;

-- Vista para cantidad de cancelaciones por tipo de reservas:
-- Esta vista mostrará la cantidad de cancelaciones para cada tipo de reserva.
CREATE VIEW CancelacionesPorTipoTrabajo AS
SELECT
    TIPO_TRABAJO.TIPO_TRABAJO,
    COUNT(RESERVA.IDRESERVA) AS TotalCancelaciones
FROM
    TIPO_TRABAJO
    INNER JOIN PUESTO_TRABAJO_TALLER ON TIPO_TRABAJO.IDTIPOTRABAJO = PUESTO_TRABAJO_TALLER.IDTIPOTRABAJO
    LEFT JOIN RESERVA ON PUESTO_TRABAJO_TALLER.IDPUESTOTALLER = RESERVA.IDPUESTOTALLER
WHERE
    RESERVA.CANCELACION IS NOT NULL
GROUP BY
    TIPO_TRABAJO.TIPO_TRABAJO;

-- Vista para ver la capacidad de los talleres en función de las reservas realizadas:
-- Esta vista mostrará la capacidad restante de los puestos de trabajo de cada taller.
CREATE VIEW CapacidadPuestos AS
SELECT 
    TALLER.IDTALLER,
    TALLER.NOMBRE AS nombre_taller,
    PUESTO_TRABAJO.TIPO_PUESTO,
    PUESTO_TRABAJO_TALLER.IDPUESTOTALLER,
    PUESTO_TRABAJO_TALLER.CAPACIDAD AS capacidad_total,
    COUNT(RESERVA.IDRESERVA) AS reservas_actuales,
    PUESTO_TRABAJO_TALLER.CAPACIDAD - COUNT(RESERVA.IDRESERVA) AS capacidad_disponible
FROM 
    TALLER
JOIN PUESTO_TRABAJO_TALLER ON TALLER.IDTALLER = PUESTO_TRABAJO_TALLER.IDTALLER
JOIN PUESTO_TRABAJO ON PUESTO_TRABAJO_TALLER.IDPUESTO = PUESTO_TRABAJO.IDPUESTO
LEFT JOIN RESERVA ON PUESTO_TRABAJO_TALLER.IDPUESTOTALLER = RESERVA.IDPUESTOTALLER AND RESERVA.CANCELACION IS NULL
    AND RESERVA.FECHA >= CURDATE() AND RESERVA.FECHA < DATE_ADD(CURDATE(), INTERVAL 1 DAY)
GROUP BY 
    TALLER.IDTALLER, TALLER.NOMBRE, PUESTO_TRABAJO.TIPO_PUESTO, PUESTO_TRABAJO_TALLER.IDPUESTOTALLER, PUESTO_TRABAJO_TALLER.CAPACIDAD
ORDER BY 
    TALLER.IDTALLER, PUESTO_TRABAJO.TIPO_PUESTO;
