## CREACION DE UNA BASE DE DATOS PARA LA ADMINISTRACIÓN DE RESERVAS DE TURNOS PARA TALLERES MECÁNICOS AUTOMOTRICES.

**Alumno:** Santiago Nicolas Nuñez

**Comisión:** #57190

**Profesor:** Anderson M. Torres

**Tutor:** Ariel Annone



### Problema:

Nuestro equipo de desarrollo está trabajando en un sistema de gestión de reservas de turnos para talleres, donde nos enfrentamos a la necesidad de diseñar una base de datos eficiente que pueda manejar todas las operaciones relacionadas a estas de manera óptima.

### Descripción del Problema:

1. **Gestión de Clientes y Empleados**: Necesitamos una base de datos que nos permita registrar la información de los clientes que realizan reservas, así como de los empleados involucrados en el trabajo solicitado.

2. **Gestión de Tipos de trabajo**: Es importante poder clasificar las reservas según su tipo, ya sea una alineación, un trabajo de mecánica ligera o un trabajo de competición. Esto nos ayudará a organizar mejor el flujo de trabajo y adaptar nuestros servicios según las necesidades del cliente.

3. **Gestión de Puestos y Disponibilidad**: La base de datos debe permitirnos gestionar la disponibilidad de puestos en cada taller, así como gestionar su capacidad y disponibilidad. Esto es fundamental para garantizar una asignación eficiente de puestos y evitar conflictos de reservas.

4. **Registro de Reservas**: Necesitamos un sistema que pueda registrar de manera detallada cada reserva realizada, incluyendo la fecha y hora de la reserva, el cliente que la realizó, el puesto reservado, en que taller, el tipo de trabajo y el empleado que realizará la tarea asignada.

### Objetivo:

Diseñar e implementar una base de datos relacional que satisfaga todas las necesidades de gestión de reservas para nuestro sistema de gestión de talleres. Esta base de datos deberá ser eficiente, escalable y fácil de mantener, permitiendo una gestión ágil y precisa de todas las operaciones relacionadas con las reservas.

### Herramientas utilizadas:
* **MySQL WorkBench**
* **Claude AI**
* **ChatGPT**
* **Miro**
* **Excalidraw**


## Descripción de la Base de Datos - Gestión de Reservas en Talleres

Esta base de datos está diseñada para gestionar reservas de turnos entre distintos talleres mecánicos automotrices, de esta manera contar con la información relacionada con clientes, empleados, tipos de trabajo y talleres disponibles. A continuación se detallan los elementos principales de la base de datos:

### Tablas:

1. **CLIENTE**:
   - Almacena información sobre los clientes que realizan reservas.
   - Atributos: IDCLIENTE, NOMBRE, TELEFONO, CORREO, DNI.

2. **EMPLEADO**:
   - Contiene información sobre los empleados involucrados en el trabajo a realizar.
   - Atributos: IDEMPLEADO, NOMBRE, TELEFONO, CORREO, DNI, IDTALLER, IDTIPOTRABAJO.

3. **DUEÑO**:
   - Guarda datos sobre los dueños de los talleres (no se utiliza explícitamente en el proceso de reservas).
   - Atributos: IDDUENO, NOMBRE, TELEFONO, CORREO, DNI.

4. **TIPOTRABAJO**:
   - Define diferentes tipos de trabajo para clasificarlos según la tarea realizada.
   - Atributos: IDTIPOTRABAJO, TIPO, DURACIONPROM.

5. **TALLER**:
   - Almacena información sobre los talleres disponibles.
   - Atributos: IDTALLER, IDDUENO, NOMBRE, DIRECCION, TELEFONO.

6. **PUESTO_TRABAJO**:
   - Contiene información sobre los puestos de trabajo.
   - Atributos: IDPUESTO, TIPO_PUESTO.
  
7. **PUESTO_TRABAJO_TALLER**:
   - Contiene información sobre los puestos de trabajo y su capacidad según el taller.
   - Atributos: IDPUESTOTALLER, IDPUESTO, IDTALLER, IDTIPOTRABAJO, CAPACIDAD.

8. **RESERVA**:
   - Registra las reservas de turnoes realizadas en tallers automotrices por los clientes y el detalle de los empleados y talleres involucrados.
   - Atributos: IDRESERVA, IDCLIENTE, IDPUESTOTALLER, IDEMPLEADO, FECHA, CANCELACION.

9. **LOG_CAMBIOS**:
   - Registra los cambios de acciones DML de INSERT o UPDATE.
   - Atributos: IDLOG, TABLA_AFECTADA, ACCION, FECHA, IDCLIENTE, USUARIO.   

### Problemática Resuelta:

Esta base de datos permite gestionar eficientemente el proceso de reserva en talleres, desde la información de los clientes y empleados hasta la disponibilidad de puestos y el registro de reservas. Algunos aspectos que aborda incluyen:

- Registro de clientes y empleados involucrados en el proceso de reserva.
- Clasificación de las reservas según su tipo de trabajo.
- Gestión de la disponibilidad de puestos en cada taller.
- Registro detallado de las reservas realizadas, incluyendo la fecha, cliente, puesto, empleado, taller y tipo de trabajo.

En resumen, esta base de datos proporciona una estructura para organizar y gestionar eficientemente las operaciones de reserva en talleres, lo que contribuye a mejorar el servicio ofrecido a los clientes y optimizar las operaciones del taller.

#### [LINK DER SIMPLIFICADO](https://miro.com/app/board/uXjVK3m03lM=/?share_link_id=776080637841)

## Estructura e ingesta de datos
* Se realiza principalmente por medio del archivo population.sql ubicado en el directorio ./structure
* La carga de las tablas CLIENTE, DUENO, EMPLEADO, TALLER, PUESTO_TRABAJO_TALLER Y RESERVA se realiza por medio de archivos csv colocados en el directorio ./data_csv

## BackUp
* En MySQL se ejecuta la modalidad 'Export to Self-contained File', que devuelve 1 sólo script completo el cual se encuentra en el directorio ./backup/backup.sql


## Documentacion de Vistas
### Vista: ReservasPorFecha

**Descripción:** Esta vista muestra estadísticas sobre las reservas realizadas en diferentes fechas, como el número total de reservas por día, por semana o por mes.

**Columnas:**

* **Fecha:** Fecha de la reserva (formato YYYY-MM-DD).
* **TotalReservas:** Número total de reservas realizadas en la fecha indicada.

**Ejemplo de consulta:**

```sql
SELECT * FROM ReservasPorFecha
WHERE Fecha BETWEEN '2010-12-01' AND '2023-12-31'
ORDER BY Fecha ASC;
```

### Vista: ReservasPorTaller

**Descripción:** Esta vista muestra la cantidad de reservas realizadas para cada taller.

**Columnas:**

* **IDTALLER:** Identificador único del taller.
* **TIPO_TRABAJO:** Descripción del trabajo.
* **TotalReservas:** Número total de reservas realizadas para el taller.

**Ejemplo de consulta:**

```sql
SELECT * FROM ReservasPorTaller
ORDER BY TotalReservas DESC;
```

### Vista: CancelacionesPorTipoTrabajo

**Descripción:** Esta vista muestra la cantidad de cancelaciones para cada tipo de trabajo.

**Columnas:**

* **TIPO_TRABAJO:** Tipo de trabajo (ej. "Alineación", "Chasis competición", etc.).
* **TotalCancelaciones:** Número total de cancelaciones para el tipo de trabajo.

**Ejemplo de consulta:**

```sql
SELECT * FROM CancelacionesPorTipoTrabajo
ORDER BY TotalCancelaciones DESC;
```
### Vista: CapacidadPuestos

**Descripción:** Esta vista muestra la capacidad restante de los puestos de trabajo de cada taller.

**Columnas:**

* **IDTALLER:** Identificador único de los talleres.
* **TIPO_PUESTO:** Descripción del puesto de trabajo.
* **IDPUESTOTALLER:** Identificador único del puesto de trabajo en determinado taller.
* **nombre_taller:** Nombre de los talleres.
* **reservas_actuales:** Cantidad de reservas.
* **capacidad_total:** Capacidad total de los talleres.
* **capacidad_disponible:** Capacidad total post reservas.

**Ejemplo de consulta:**

```sql
SELECT * FROM CapacidadPuestos
WHERE capacidad_disponible > 0
ORDER BY nombre_taller, TIPO_PUESTO;
```

## Documentación de Funciones 

### Función: trabajo_cancelado

**Descripción:** Esta función verifica si un trabajo en un determinado taller está cancelado para una reserva.

**Parámetros:**

* **taller_id:** Identificador único del trabajo en determinado taller.

**Retorno:**

* **TRUE** si el trabajo en el taller está cancelado para alguna reserva, **FALSE** en caso contrario.

**Ejemplo de uso:**

```sql
SELECT trabajo_cancelado(10);
```

**Nota:** La función solo verifica si el trabajo en un taller determinado está cancelado para alguna reserva. No indica si dicho trabajo en dicho taller está disponible para una nueva reserva en este momento.

### Función: contar_reservas_cliente

**Descripción:** Esta función cuenta la cantidad de reservas realizadas por un cliente en un intervalo de tiempo.

**Parámetros:**

* **cliente_id:** Identificador único del cliente.
* **fecha_inicio:** Fecha de inicio del intervalo (formato YYYY-MM-DD).
* **fecha_fin:** Fecha de fin del intervalo (formato YYYY-MM-DD).

**Retorno:**

* Número total de reservas realizadas por el cliente en el intervalo de tiempo especificado.

**Ejemplo de uso:**

```sql
SELECT contar_reservas_cliente(5, '2023-12-01', '2023-12-31');
```

**Nota:** La función no toma en cuenta las cancelaciones de reservas.

### Función: cantidad_puestos_por_taller

**Descripción:** Esta función devuelve la cantidad de puestos que tiene un taller.

**Parámetros:**

* **puestotaller_id:** Identificador único del puesto en el taller.

**Retorno:**

* Número total de mesas del restaurante.

**Ejemplo de uso:**

```sql
SELECT cantidad_puestos_por_taller(2);
```

## Documentación de Triggers 

### Trigger: after_insert_cliente_trigger

**Descripción:** Este trigger registra la inserción de un nuevo cliente en la tabla LOG_CAMBIOS.

**Detalles:**

* **Tabla afectada:** CLIENTE
* **Acción:** INSERT
* **Información registrada:** Fecha, ID del cliente, Usuario.

**Ejemplo:**

* Se inserta un nuevo cliente.
* El trigger registra la acción en la tabla LOG_CAMBIOS con los detalles correspondientes.

### Trigger: after_update_cancelacion_reserva_trigger

**Descripción:** Este trigger registra la cancelación de una reserva en la tabla LOG_CAMBIOS.

**Detalles:**

* **Tabla afectada:** RESERVA
* **Acción:** CANCELACION
* **Información registrada:** Fecha, ID del cliente (si se conoce), Usuario.

**Ejemplo:**

* Se actualiza una reserva para indicar su cancelación.
* Si la cancelación no estaba presente antes, el trigger registra la acción en la tabla LOG_CAMBIOS.

### Trigger: before_insert_cliente_trigger

**Descripción:** Este trigger verifica si el correo electrónico de un nuevo cliente ya está en uso.

**Detalles:**

* **Tabla afectada:** CLIENTE
* **Acción:** INSERT
* **Validación:** Correo electrónico único.

**Ejemplo:**

* Se intenta insertar un nuevo cliente con un correo electrónico ya registrado.
* El trigger genera un error y la inserción no se realiza.

### Trigger: before_insert_reserva_trigger

**Descripción:** Este trigger verifica si un cliente ya tiene una reserva en la misma hora y taller.

**Detalles:**

* **Tabla afectada:** RESERVA
* **Acción:** INSERT
* **Validación:** No se permiten reservas duplicadas en la misma hora y taller para un mismo cliente.

**Ejemplo:**

* Se intenta reservar trabajo para un cliente que ya tiene una reserva en la misma hora y taller.
* El trigger genera un error y la reserva no se realiza.

### Trigger: before_reserva_update

**Descripción:** Este trigger verifica que la cancelación sea anterior a fecha.

**Detalles:**

* **Tabla afectada:** RESERVA
* **Acción:** UPDATE 
* **Información registrada:** Fecha, cancelacion.

**Ejemplo:**

* Se actualiza una reserva para indicar su cancelación.


## Documentación de Procedimientos Almacenados

### Procedimiento: actualizar_reserva_cancelada_por_email

**Descripción:** Este procedimiento actualiza una reserva cancelada para un cliente a partir de su correo electrónico.

**Parámetros:**

* **por_email:** Correo electrónico del cliente.

**Retorno:**

* Mensaje de éxito o error.

**Ejemplo de uso:**

```sql
CALL actualizar_reserva_cancelada_por_email('ejemplo@correo.com');
```

### Procedimiento: actualizar_tipo_reserva_por_email

**Descripción:** Este procedimiento actualiza el tipo de reserva de la última reserva realizada por un cliente a partir de su correo electrónico.

**Parámetros:**

* **por_email:** Correo electrónico del cliente.
* **por_nuevo_trabajo:** Nuevo tipo de trabajo.
* **cliente_id:** Identificador único del cliente.
* **reserva_id:** Identificador único de la reserva.
* **nuevo_puesto_taller_id:** Identificador único del tipo de trabajo en determinado taller.

**Retorno:**

* Mensaje de éxito o error.

**Ejemplo de uso:**

```sql
CALL actualizar_tipo_reserva_por_email('ejemplo@correo.com', 'Alineación');
```

### Procedimiento: crear_empleado

**Descripción:** Este procedimiento crea un nuevo empleado en la base de datos.

**Parámetros:**

* **su_nombre:** Nombre del empleado.
* **su_telefono:** Teléfono del empleado.
* **su_correo:** Correo electrónico del empleado.
* **su_dni:** DNI del empleado.
* **su_id_taller:** ID del taller en el que trabaja.
* **su_id_tipotrabajo:** ID del tipo de trabajo que realiza.

**Retorno:**

* Mensaje de éxito o error

**Ejemplo de uso:**

```sql
CALL crear_empleado('Pepe Ramirez', '12348765', 'pepitora@ejemplo.com', '23158694', 12, 2);
```
## Roles y permisos
`./database_objects/user_roles.sql`

Se genera cuatro roles:

1. `admin_total`: Este rol tiene permisos totales.
2. `admin_rrhh`: Este rol tiene permisos totales sobre las tablas EMPLEADO y TALLER.
3. `analista_dml`: Este rol tiene permisos de lectura de las tablas y vistas.
4. `gestor_reservas`: Este rol tiene permisos totales sobre la tabla RESERVA y puede usar todos los store procedures y todas lasfunciones.

Además, se crea un usuario por cada rol y se le asigna el rol correspondiente.

