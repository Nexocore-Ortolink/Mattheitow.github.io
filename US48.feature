Feature: US48 - Ayudas contextuales en módulos

  Como usuario
  Quiero ver ayudas contextuales dentro de cada módulo
  Para entender qué hace cada funcionalidad sin salir de la pantalla

Scenario: Ver tooltip explicativo de un campo

  Given el usuario no sabe para qué sirve un elemento de la interfaz
  When mantiene presionado el ícono "(i)"
  Then el sistema muestra un tooltip
  And explica brevemente la funcionalidad

Examples:

| INPUT |
| Elemento: "Registro de dolor" |
| Acción: Mantener presionado "(i)" |

| OUTPUT |
| Tooltip: Visible |
| Explicación: Mostrada |