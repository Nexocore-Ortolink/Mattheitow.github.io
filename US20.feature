Feature: US20 - Ver instrucciones en texto

  Como paciente con dificultades auditivas o en entornos sin sonido
  Quiero ver las instrucciones del ejercicio en texto
  Para realizarlo correctamente

Scenario: Acceder a instrucciones escritas de un ejercicio

  Given el paciente está viendo el video de un ejercicio
  When presiona el ícono de "Instrucciones"
  Then el sistema despliega el texto con los pasos del ejercicio debajo del video

Examples:

| INPUT |
| EjercicioID: 40 |
| Acción: Clic en "Instrucciones" |

| OUTPUT |
| Instrucciones: Visibles |
| Texto del ejercicio: Mostrado |