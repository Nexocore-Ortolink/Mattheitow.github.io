Feature: US29 - Gráfico de evolución del dolor

  Como paciente
  Quiero ver un gráfico de la evolución de mi dolor en el tiempo
  Para entender visualmente mi progreso

Scenario: Ver gráfico semanal de dolor

  Given el paciente tiene registros de dolor de al menos 7 días
  When accede a la sección "Mi progreso"
  Then el sistema muestra un gráfico de línea con los niveles de dolor por día
  And permite cambiar la vista a mensual

Examples:

| INPUT |
| Registros: 7 días consecutivos |

| OUTPUT |
| Gráfico: Visible |
| Vista semanal: Disponible |
| Vista mensual: Disponible |