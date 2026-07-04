Feature: US18 - Notificaciones de cuenta

  Como usuario
  Quiero recibir notificaciones relevantes sobre mi cuenta
  Para estar informado de cambios importantes

Scenario: Notificación de nuevo especialista vinculado

  Given un especialista vincula al paciente a su lista
  When el paciente abre la aplicación
  Then recibe una notificación que indica "El Dr. [nombre] te ha agregado como paciente"

Examples:

| INPUT |
| Especialista: "Dr. Carlos Gómez" |

| OUTPUT |
| Notificación: Recibida |
| Mensaje: "El Dr. Carlos Gómez te ha agregado como paciente" |