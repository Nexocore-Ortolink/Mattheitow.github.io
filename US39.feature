Feature: US39 - Insignias por logros

  Como paciente
  Quiero ganar insignias al alcanzar hitos de rehabilitación
  Para sentirme motivado a continuar

Scenario: Ganar insignia por primera rutina completada

  Given el paciente completa su primera rutina
  When el sistema detecta el logro
  Then muestra una animación de felicitación
  And otorga la insignia "¡Primera rutina!"

Examples:

| INPUT |
| Rutinas completadas: 1 |

| OUTPUT |
| Insignia: "¡Primera rutina!" |
| Animación: Mostrada |