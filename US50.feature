Feature: US50 - Etiquetas de texto en navegación

  Como paciente adulto mayor con poca experiencia tecnológica
  Quiero ver etiquetas de texto debajo de cada ícono de navegación
  Para identificar fácilmente cada sección

Scenario: Ver etiquetas en la barra de navegación inferior

  Given el paciente accede a cualquier pantalla principal
  When observa la barra de navegación inferior
  Then el sistema muestra íconos con etiquetas de texto debajo
  And permite identificar cada sección fácilmente

Examples:

| INPUT |
| Pantalla: Inicio |

| OUTPUT |
| Etiquetas visibles: Sí |
| Inicio: Visible |
| Rutinas: Visible |
| Diario: Visible |
| Prótesis: Visible |
| Comunidad: Visible |