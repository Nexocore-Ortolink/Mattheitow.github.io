Feature: US25 - Nivel de dificultad de ejercicios

  Como paciente
  Quiero ver el nivel de dificultad de cada ejercicio
  Para elegir los que corresponden a mi estado de recuperación

Scenario: Visualizar nivel de dificultad

  Given el paciente navega por la lista de ejercicios de su rutina
  When revisa cada ejercicio
  Then el sistema muestra una etiqueta de nivel: Básico, Intermedio o Avanzado
  And la etiqueta tiene un color diferenciado para cada nivel

Examples:

| INPUT |
| Ejercicio: "Flexión de rodilla" |

| OUTPUT |
| Nivel: Básico |
| Color: Verde |