Feature: US40 - Mensaje motivacional diario

  Como paciente
  Quiero recibir un mensaje motivacional diario
  Para mantener mi actitud positiva durante el proceso de rehabilitación

Scenario: Ver mensaje motivacional en la pantalla de inicio

  Given el paciente abre la app por primera vez en el día
  When accede a la pantalla de inicio
  Then el sistema muestra una tarjeta con un mensaje motivacional diferente cada día

Examples:

| INPUT |
| Fecha: "18/06/2026" |
| Primer acceso del día: Sí |

| OUTPUT |
| Mensaje motivacional: Mostrado |
| Tarjeta: Visible |