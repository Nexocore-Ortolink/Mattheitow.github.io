Feature: US28 - Filtrar historial de dolor por fecha

  Como paciente
  Quiero filtrar mi historial de dolor por rango de fechas
  Para analizar períodos específicos de mi recuperación

Scenario: Filtrar por rango personalizado

  Given el paciente quiere ver un período específico
  When selecciona "Rango personalizado" e ingresa fecha de inicio y fin
  Then el sistema muestra únicamente los registros dentro de ese rango

Examples:

| INPUT |
| FechaInicio: "2026-06-01" |
| FechaFin: "2026-06-15" |

| OUTPUT |
| Registros filtrados: Mostrados |
| Período: 01/06/2026 - 15/06/2026 |