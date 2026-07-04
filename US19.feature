Feature: US19 - Pausar y reanudar rutina

  Como paciente
  Quiero pausar y reanudar mi rutina en cualquier momento
  Para adaptarla a interrupciones en mi día

Scenario: Pausar rutina en progreso

  Given el paciente está realizando una rutina con varios ejercicios
  When presiona el botón de pausa
  Then el sistema detiene el video
  And guarda el progreso hasta ese momento

Examples:

| INPUT |
| RutinaID: 300 |
| Ejercicio actual: 4 |

| OUTPUT |
| Estado: Pausado |
| Progreso guardado: Sí |