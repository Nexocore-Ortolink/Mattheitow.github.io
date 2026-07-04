Feature: US37 - Contactar al especialista desde la app

  Como paciente
  Quiero poder enviar un mensaje directo a mi especialista desde la app
  Para comunicarme ante una urgencia

Scenario: Enviar mensaje de urgencia al especialista

  Given el paciente detecta una situación urgente
  When accede a "Mis especialistas" y presiona "Enviar mensaje"
  And escribe el motivo y presiona "Enviar"
  Then el especialista recibe una notificación push con el mensaje

Examples:

| INPUT |
| Motivo: "Dolor intenso al usar la prótesis" |
| Mensaje: "Necesito una revisión urgente" |

| OUTPUT |
| Mensaje: Enviado |
| Notificación: Recibida por especialista |