Feature: US04 - Registro de dolor de miembro fantasma

  Como paciente
  Quiero registrar mi nivel de dolor de miembro fantasma
  Para monitorear mi evolución física y emocional

Scenario: Registro exitoso de nivel de dolor

  Given el paciente accede al "Diario de dolor"
  When selecciona la intensidad del dolor en un slider del 1 al 10
  And agrega notas opcionales y presiona "Guardar"
  Then el sistema guarda el registro con fecha y hora automáticas
  And el historial muestra el nuevo registro

Examples:

| INPUT |
| Intensidad: 8 |
| Nota: "Dolor fuerte al caminar" |
| Acción: Clic en "Guardar" |

| OUTPUT |
| Registro: Guardado |
| Fecha y hora: Registradas automáticamente |
| Historial: Actualizado |