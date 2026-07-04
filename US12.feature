Feature: US12 - Seguimiento de actividad física

  Como especialista
  Quiero visualizar métricas de actividad física de mis pacientes
  Para detectar posibles complicaciones en su recuperación

Scenario: Ver actividad diaria del paciente

  Given el especialista accede al perfil de un paciente
  When selecciona la pestaña "Actividad física"
  Then el sistema muestra un resumen diario de ejercicios completados
  And los cambios físicos relevantes registrados por el paciente

Examples:

| INPUT |
| PacienteID: 105 |

| OUTPUT |
| Actividad diaria: Visible |
| Ejercicios completados: Mostrados |
| Cambios físicos: Disponibles |