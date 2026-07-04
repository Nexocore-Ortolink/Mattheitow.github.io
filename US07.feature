Feature: US07 - Monitoreo remoto

  Como especialista
  Quiero revisar el progreso de mis pacientes de forma remota
  Para evaluar su rehabilitación sin consultas presenciales constantes

Scenario: Ver métricas de adherencia de un paciente

  Given el especialista accede al dashboard de un paciente
  When revisa la sección de adherencia
  Then el sistema muestra el porcentaje de rutinas completadas en el último mes
  And un gráfico de líneas con la evolución del dolor registrada

Examples:

| INPUT |
| EspecialistaID: 10 |
| PacienteID: 105 |

| OUTPUT |
| Adherencia: 82% |
| Gráfico de dolor: Visible |