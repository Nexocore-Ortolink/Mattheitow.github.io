Feature: US30 - Agregar nota al registro de dolor

  Como paciente
  Quiero agregar una nota descriptiva al registrar mi dolor
  Para dar más contexto a mi especialista

Scenario: Agregar nota al registrar dolor

  Given el paciente está en la pantalla de registro de dolor
  When escribe una nota en el campo de texto opcional
  And guarda el registro
  Then el sistema guarda la nota junto al nivel de dolor y la fecha

Examples:

| INPUT |
| Intensidad: 8 |
| Nota: "Dolor fuerte al caminar" |
| Acción: Guardar registro |

| OUTPUT |
| Registro: Guardado |
| Nota: Asociada al registro |
| Fecha: Registrada |