 Feature: US08 - Gestión de pacientes: alertas de adherencia

  Como especialista
  Quiero visualizar alertas de baja adherencia de mis pacientes
  Para identificar oportunamente posibles riesgos en su rehabilitación

Scenario: Visualizar alerta de baja adherencia

  Given un paciente lleva 5 días sin completar sus rutinas asignadas
  When el especialista revisa la sección "Mis Pacientes"
  Then el sistema muestra un indicador rojo de baja adherencia
  And la alerta aparece junto al nombre del paciente

Examples:

| INPUT |
| PacienteID: 105 |
| Días sin completar rutinas: 5 |

| OUTPUT |
| Indicador: Rojo |
| Estado: Baja adherencia |
| Alerta visible: Sí |