Feature: US03 - Visualización de rutinas

  Como paciente
  Quiero visualizar rutinas guiadas en video
  Para realizar correctamente mis ejercicios de rehabilitación desde casa

Scenario: Ver rutina asignada del día

  Given el paciente accede a la sección "Rutinas"
  When visualiza la rutina del día
  Then el sistema muestra la lista de ejercicios asignados con duración estimada
  And cada ejercicio tiene un video reproducible desde el móvil

Examples:

| INPUT |
| PacienteID: 105 |
| Acción: Acceder a "Rutinas" |

| OUTPUT |
| Ejercicios asignados: Mostrados |
| Videos: Disponibles |
| Duración estimada: Visible |