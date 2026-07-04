Feature: US09 - Alertas de mantenimiento de prótesis

  Como paciente
  Quiero recibir alertas sobre el mantenimiento de mi prótesis
  Para prevenir problemas físicos o técnicos

Scenario: Recibir alerta preventiva de revisión

  Given el sistema detecta que han pasado 90 días desde el último mantenimiento
  When llega la fecha programada de revisión
  Then el sistema envía una notificación push
  And muestra "Es momento de revisar tu prótesis"

Examples:

| INPUT |
| Último mantenimiento: Hace 90 días |

| OUTPUT |
| Notificación: Enviada |
| Mensaje: "Es momento de revisar tu prótesis" |