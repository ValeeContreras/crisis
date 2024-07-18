### Casos de uso del Proyecto
Esta guía de implementación es diseñada para el uso de datos enfocados en la Atención Primaria de Salud (APS) para Agenda. A continuacion se puede observar su diagrama de secuencia: 

DIAGRAMA1

### Casos de usos
El proyecto se separa en 4 Casos de Usos, los cuales son detallados a continuación:

##### Caso de Uso 1: Solicitud de hora
Este caso de uso describe la solicitud de una hora médica solicitada por el paciente, el cual esperara una respuesta.  Se requiere de los siguientes datos para poder solicitar la hora médica:
<br>
* Nombre del paciente
* RUT paciente
* Fecha de nacimiento
* Edad
* Previsión
<br>

DIAGRAMA 2

##### Operación
Se utiliza el método **POST** para enviar una solicitud de creación de una nueva cita. Quedando la siguiente transacción:
<br>
POST [URL_Base]/Appointment/

#### Caso de Uso 2: Acepto/Rechazo de hora 
El paciente recibe la información detallada de la cita médica, en la cual incluye:
* Nombre del Paciente.
* Médico que prestara la atención.
* Especialidad del prestador.
* Fecha y hora de la cita.
* Servicio que prestara el prestador.
* CESFAM en donde se realizara la cita médica
<br>
El paciente puede aceptar o rechazar esta hora médica. Dependientemente de la decicion que tome se actualiza el estado de la cita médica.
En el caso de que el paciente acepte la cita médica cambia el estado a booked.
En el caso de que el paciente rechace la cita médica se le busca otra hora y en el caso que vuelva a rechazar la segunda cita médica quedara en lista de espera.

DIAGRAMA3

##### Operación
Se utiliza el metodo **PUT** para poder aceptar o rechazar la cita medica. Quedando la siguiente transacción:
<br>
PUT [URL_Base]/Appointment/{id_Appointment}

#### Caso de uso 3: Reagendamiento de hora
En caso de errores o cambios de información de la cita, estos datos incorrectos se pueden actualizar.

DIAGRAMA4

##### Operación
Se utiliza el metodo **PUT** para poder actualizar la información con respecto a la cita medica. Quedando la siguiente transacción:
<br>
PUT [URL_Base]/Appointment{id_Appointment}

#### Caso de uso 4: Lectura de la hora
El ususario puede acceder a la vizualización de sus citas para revisar el historial y detalles de sus citas médicas.
<br>

DIAGRAMA5

##### Operaciones
Se utiliza el metodo **GET** para poder acceder a la información  de las citas medicas y sus detalles. Quedando las siguientes transacciónes:

**INSERTAR TRANSACCIONES**