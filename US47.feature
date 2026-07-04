Feature: US47 - Centro de ayuda y FAQ

  Como usuario
  Quiero acceder a una sección de ayuda con preguntas frecuentes
  Para resolver mis dudas de forma autónoma

Scenario: Acceder al centro de ayuda desde cualquier pantalla

  Given el paciente o especialista tiene una duda sobre la app
  When presiona el ícono "?"
  Then el sistema abre el Centro de Ayuda
  And muestra categorías de preguntas frecuentes

Examples:

| INPUT |
| Acción: Clic en "?" |

| OUTPUT |
| Centro de ayuda: Abierto |
| FAQ: Mostradas |