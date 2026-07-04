Feature: US49 - Reportar un error o problema

  Como usuario
  Quiero reportar un error técnico dentro de la app
  Para que el equipo de soporte pueda solucionarlo

Scenario: Enviar reporte de error

  Given el usuario encuentra un problema técnico
  When accede a "Ayuda > Reportar un problema"
  And describe el error y presiona "Enviar reporte"
  Then el sistema envía el reporte al equipo de soporte
  And muestra el mensaje de confirmación

Examples:

| INPUT |
| Descripción: "La aplicación se cierra al abrir Rutinas" |
| Acción: Clic en "Enviar reporte" |

| OUTPUT |
| Reporte: Enviado |
| Mensaje: "Tu reporte fue enviado. Gracias por ayudarnos a mejorar" |