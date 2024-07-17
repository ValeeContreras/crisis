Extension: Prevision
Id: Prevision
Title: "Prevision del paciente"
Description: "Da la prevision del paciente"
Context: Patient

* value[x] only code
* valueCode from  VSPrevision

Extension: Edad
Id: Edad
Title: "Edad del paciente"
Description: "Da la edad del paciente"
Context: Patient

* value[x] only integer
* valueInteger MS


Extension: Servicios
Id: Servicios
Title: "Servicio del prestador"
Description: "Da el servicio del prestador"
Context: HealthcareService

* value[x] only code
* valueCode from  VSServicios (required)