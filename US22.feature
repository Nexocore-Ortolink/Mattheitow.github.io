Feature: US22 - Historial de rutinas completadas

  Como paciente
  Quiero ver el historial de todas las rutinas que he completado
  Para tener consciencia de mi progreso

Scenario: Ver historial de rutinas

  Given el paciente accede a la sección "Historial"
  When selecciona la pestaña "Rutinas"
  Then el sistema muestra una lista cronológica de las rutinas completadas
  And cada entrada indica la fecha, duración y nombre de la rutina

Examples:

| INPUT |
| PacienteID: 105 |
| Acción: Acceder a "Historial > Rutinas" |

| OUTPUT |
| Historial: Mostrado |
| Fecha: Visible |
| Duración: Visible |
| Nombre de rutina: Visible |