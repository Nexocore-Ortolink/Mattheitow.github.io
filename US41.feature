Feature: US41 - Compartir logro en comunidad

  Como paciente
  Quiero compartir mis logros de rehabilitación en el foro de la comunidad
  Para inspirar a otros usuarios

Scenario: Compartir insignia ganada en la comunidad

  Given el paciente ganó una nueva insignia
  When presiona "Compartir en comunidad"
  Then el sistema publica automáticamente en el foro
  And muestra el logro obtenido

Examples:

| INPUT |
| Insignia: "¡Primera rutina!" |
| Acción: Clic en "Compartir en comunidad" |

| OUTPUT |
| Publicación: Creada |
| Estado: Compartida en comunidad |
| Visible para otros usuarios: Sí |