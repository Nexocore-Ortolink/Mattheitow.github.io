Feature: US42 - Moderación de contenido en comunidad

  Como usuario
  Quiero poder reportar publicaciones inapropiadas en la comunidad
  Para mantener un espacio seguro y respetuoso

Scenario: Reportar publicación inapropiada

  Given el paciente ve una publicación ofensiva en la comunidad
  When presiona el ícono de tres puntos y selecciona "Reportar"
  Then el sistema registra el reporte
  And muestra "¡Gracias! Revisaremos este contenido"

Examples:

| INPUT |
| PublicaciónID: 250 |
| Motivo: "Contenido ofensivo" |

| OUTPUT |
| Reporte: Registrado |
| Mensaje: "¡Gracias! Revisaremos este contenido" |