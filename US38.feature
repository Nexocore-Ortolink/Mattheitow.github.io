Feature: US38 - Racha de días consecutivos

  Como paciente
  Quiero ver mi racha de días consecutivos completando rutinas
  Para motivarme a mantener la constancia

Scenario: Ver racha activa

  Given el paciente ha completado rutinas por 5 días seguidos
  When accede a la pantalla de inicio
  Then el sistema muestra la racha actual

Examples:

| INPUT |
| Días consecutivos: 5 |

| OUTPUT |
| Mensaje: "🔥 Racha: 5 días consecutivos" |
| Estado: Activa |