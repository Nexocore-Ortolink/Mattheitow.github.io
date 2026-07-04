Feature: US35 - Recordatorio de revisión anual

  Como paciente
  Quiero recibir un recordatorio anual de revisión protésica
  Para no olvidar la evaluación de mi prótesis con el especialista

Scenario: Notificación de revisión anual próxima

  Given el sistema tiene registrada la fecha de colocación de la prótesis
  When faltan 30 días para cumplir un año
  Then el sistema envía una notificación
  And recuerda agendar una cita

Examples:

| INPUT |
| FechaColocación: "18/07/2025" |

| OUTPUT |
| Notificación: Enviada |
| Mensaje: "Tu revisión anual de prótesis se acerca. Agenda tu cita" |