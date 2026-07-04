Feature: US27 - Confirmación de acciones críticas

  Como paciente
  Quiero recibir una confirmación antes de enviar alertas críticas a mi especialista
  Para evitar envíos accidentales

Scenario: Confirmar envío de alerta de falla de prótesis

  Given el paciente presiona "Enviar alerta de falla"
  When el sistema muestra el diálogo de confirmación
  Then el paciente puede cancelar o confirmar el envío
  And solo si confirma, la alerta llega al especialista

Examples:

| INPUT |
| TipoAlerta: "Falla de prótesis" |
| Confirmación: Sí |

| OUTPUT |
| Alerta: Enviada |
| Notificación: Recibida por especialista |