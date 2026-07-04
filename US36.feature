Feature: US36 - Marcar mantenimiento como realizado

  Como paciente
  Quiero marcar una alerta de mantenimiento como realizada
  Para actualizar el estado de mi prótesis en la app

Scenario: Resolver alerta de mantenimiento pendiente

  Given el paciente tiene una alerta de mantenimiento activa
  When accede a la alerta y presiona "Marcar como realizado"
  Then el sistema marca la alerta como resuelta
  And actualiza el estado de la prótesis a "Sin incidencias pendientes"

Examples:

| INPUT |
| AlertaID: 301 |
| Acción: Clic en "Marcar como realizado" |

| OUTPUT |
| Alerta: Resuelta |
| Estado de prótesis: Sin incidencias pendientes |