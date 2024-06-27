## CREACION DE UNA BASE DE DATOS PARA LA ADMINISTRACIÓN DE RESERVAS DE TURNOS PARA TALLERES MECÁNICOS AUTOMOTRICES.


### Problema:

Nuestro equipo de desarrollo está trabajando en un sistema de gestión de reservas de turnos para talleres, donde nos enfrentamos a la necesidad de diseñar una base de datos eficiente que pueda manejar todas las operaciones relacionadas a estas de manera óptima.

### Descripción del Problema:

1. **Gestión de Clientes y Empleados**: Necesitamos una base de datos que nos permita registrar la información de los clientes que realizan reservas, así como de los empleados involucrados en el trabajo solicitado.

2. **Gestión de Tipos de trabajo**: Es importante poder clasificar las reservas según su tipo, ya sea una alineación, un trabajo de mecánica ligera o un trabajo de competición. Esto nos ayudará a organizar mejor el flujo de trabajo y adaptar nuestros servicios según las necesidades del cliente.

3. **Gestión de Puestos y Disponibilidad**: La base de datos debe permitirnos gestionar la disponibilidad de puestos en cada taller, así como gestionar su capacidad y estado (ocupado o disponible). Esto es fundamental para garantizar una asignación eficiente de puestos y evitar conflictos de reservas.

4. **Registro de Reservas**: Necesitamos un sistema que pueda registrar de manera detallada cada reserva realizada, incluyendo la fecha y hora de la reserva, el cliente que la realizó, el puesto reservado, en que taller, el tipo de trabajo y el empleado que realizó la tarea asignada.

### Objetivo:

Diseñar e implementar una base de datos relacional que satisfaga todas las necesidades de gestión de reservas para nuestro sistema de gestión de talleres. Esta base de datos deberá ser eficiente, escalable y fácil de mantener, permitiendo una gestión ágil y precisa de todas las operaciones relacionadas con las reservas.


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
   - Define diferentes tipos de trabajo para clasificarlOs según la tarea realizada.
   - Atributos: IDTIPOTRABAJO, TIPO, DURACIONPROM.

5. **TALLER**:
   - Almacena información sobre los talleres disponibles.
   - Atributos: IDTALLER, IDDUENO, NOMBRE, DIRECCION, TELEFONO.

6. **PUESTO_TRABAJO**:
   - Contiene información sobre los puestos de trabajo.
   - Atributos: IDPUESTO, TIPO_PUESTO.
  
7. **PUESTO_TRABAJO_TALLER**:
   - Contiene información sobre los puestos de trabajo y su disponibilidad en cada taller.
   - Atributos: IDPUESTOTALLER, IDPUESTO, IDTALLER, IDTIPOTRABAJO, CAPACIDAD.

8. **RESERVA**:
   - Registra las reservas de turnoes realizadas en tallers automotrices por los clientes y el detalle de los empleados y talleres involucrados.
   - Atributos: IDRESERVA, IDCLIENTE, IDPUESTOTALLER, IDEMPLEADO, FECHA, CANCELACION.

### Problemática Resuelta:

Esta base de datos permite gestionar eficientemente el proceso de reserva en talleres, desde la información de los clientes y empleados hasta la disponibilidad de puestos y el registro de reservas. Algunos aspectos que aborda incluyen:

- Registro de clientes y empleados involucrados en el proceso de reserva.
- Clasificación de las reservas según su tipo de trabajo.
- Gestión de la disponibilidad de puestos en cada taller.
- Registro detallado de las reservas realizadas, incluyendo la fecha, cliente, puesto, empleado, taller y tipo de trabajo.

En resumen, esta base de datos proporciona una estructura para organizar y gestionar eficientemente las operaciones de reserva en talleres, lo que contribuye a mejorar el servicio ofrecido a los clientes y optimizar las operaciones del taller.


#### LINK DER SIMPLIFICADO

https://miro.com/app/board/uXjVK3m03lM=/?share_link_id=776080637841
