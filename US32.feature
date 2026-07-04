Feature: US32 - Registrar incidencia en prótesis

  Como paciente
  Quiero registrar incidencias o fallas en mi prótesis
  Para llevar un historial y alertar a mi especialista

Scenario: Registrar falla repentina

  Given el paciente detecta un problema en su prótesis
  When accede a "Prótesis" y presiona "Reportar incidencia"
  And describe el problema y selecciona el tipo de falla
  Then el sistema guarda la incidencia con fecha y hora
  And pregunta si desea notificar al especialista

Examples:

| INPUT |
| TipoFalla: "Desajuste" |
| Descripción: "La prótesis genera molestias al caminar" |

| OUTPUT |
| Incidencia: Registrada |
| Fecha y hora: Guardadas |
| Opción de notificación: Disponible |