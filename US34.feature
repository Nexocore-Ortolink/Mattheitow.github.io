Feature: US34 - Detección del estado de la prótesis

  Como especialista
  Quiero conocer el estado de las prótesis de mis pacientes
  Para detectar problemas o necesidades de mantenimiento de forma proactiva

Scenario: Ver estado actual de prótesis en dashboard

  Given el especialista accede al perfil de un paciente
  When selecciona la pestaña "Prótesis"
  Then el sistema muestra el estado actual
  And indica si existe alguna alerta pendiente

Examples:

| INPUT |
| PacienteID: 105 |

| OUTPUT |
| Estado: "Sin incidencias" |
| Alertas pendientes: No |