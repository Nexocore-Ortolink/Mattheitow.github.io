Feature: US33 - Historial de mantenimientos

  Como paciente
  Quiero ver el historial de mantenimientos realizados a mi prótesis
  Para tener un control ordenado de su estado

Scenario: Ver historial completo

  Given el paciente tiene mantenimientos registrados
  When accede a "Prótesis" > "Historial"
  Then el sistema muestra una lista cronológica con fecha, tipo de mantenimiento y notas

Examples:

| INPUT |
| PrótesisID: 15 |
| Acción: Acceder a historial |

| OUTPUT |
| Historial: Visible |
| Fecha: Mostrada |
| Tipo de mantenimiento: Mostrado |
| Notas: Disponibles |