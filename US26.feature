Feature: US26 - Edición de registro de dolor

  Como paciente
  Quiero editar un registro de dolor cometido por error
  Para asegurar que mi historial refleja mi estado real

Scenario: Editar registro dentro de las primeras 24 horas

  Given el paciente registró un nivel de dolor incorrecto
  When accede al historial y selecciona ese registro dentro de las 24 horas siguientes
  Then el sistema muestra la opción "Editar" activa
  And puede modificar la intensidad y las notas

Examples:

| INPUT |
| RegistroID: 1001 |
| Nueva intensidad: 6 |
| Nueva nota: "Dolor moderado" |

| OUTPUT |
| Registro: Actualizado |
| Cambios: Guardados |