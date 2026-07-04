Feature: US10 - Espacio de comunidad

  Como paciente
  Quiero interactuar con otros usuarios
  Para compartir experiencias y sentir apoyo emocional durante mi rehabilitación

Scenario: Publicar mensaje en la comunidad

  Given el paciente accede a la sección "Comunidad"
  When escribe un mensaje y presiona "Publicar"
  Then el mensaje aparece en el feed de la comunidad visible para otros usuarios

Examples:

| INPUT |
| Mensaje: "Hoy completé mi primera rutina" |
| Acción: Clic en "Publicar" |

| OUTPUT |
| Publicación: Creada |
| Visible en comunidad: Sí |