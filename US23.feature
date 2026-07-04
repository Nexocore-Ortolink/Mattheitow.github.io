Feature: US23 - Calificación de rutina

  Como paciente
  Quiero calificar y dejar comentarios sobre una rutina completada
  Para dar retroalimentación a mi especialista

Scenario: Calificar rutina completada

  Given el paciente acaba de completar una rutina
  When aparece la pantalla de evaluación y selecciona entre 1 y 5 estrellas
  And opcionalmente escribe un comentario
  Then el sistema guarda la calificación
  And la vincula al especialista

Examples:

| INPUT |
| Calificación: 5 estrellas |
| Comentario: "La rutina fue muy útil" |

| OUTPUT |
| Calificación: Guardada |
| Retroalimentación: Disponible para el especialista |