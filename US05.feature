Feature: US05 - Recordatorios de ejercicios

  Como paciente
  Quiero recibir recordatorios diarios
  Para no olvidar realizar mis ejercicios de rehabilitación

Scenario: Configurar horario de recordatorio

  Given el paciente accede a la sección de configuración de recordatorios
  When selecciona una hora específica y activa el recordatorio
  Then el sistema programa una notificación diaria a esa hora

Examples:

| INPUT |
| Hora: "08:00 AM" |
| Recordatorio: Activado |

| OUTPUT |
| Notificación diaria: Programada |
| Hora programada: 08:00 AM |