Feature: US44 - Ajuste de tamaño de texto

  Como paciente adulto mayor con dificultades de visión
  Quiero ajustar el tamaño del texto en la app
  Para leer mejor sin esfuerzo

Scenario: Aumentar tamaño de texto

  Given el paciente accede a "Configuración > Accesibilidad"
  When selecciona la opción de texto "Grande" o "Extra grande"
  Then el sistema aplica el tamaño seleccionado en toda la interfaz de inmediato

Examples:

| INPUT |
| TamañoTexto: "Grande" |

| OUTPUT |
| Tamaño aplicado: Grande |
| Interfaz actualizada: Sí |