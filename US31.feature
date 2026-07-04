Feature: US31 - Comparar semanas de progreso

  Como paciente
  Quiero comparar mi progreso entre dos semanas
  Para identificar si estoy mejorando

Scenario: Comparar semana actual con semana anterior

  Given el paciente tiene registros de al menos 2 semanas
  When accede a "Comparar semanas" en la sección de progreso
  Then el sistema muestra un cuadro comparativo con rutinas completadas y nivel promedio de dolor
  And destaca si el progreso mejoró o empeoró

Examples:

| INPUT |
| SemanaActual: "10/06/2026 - 16/06/2026" |
| SemanaAnterior: "03/06/2026 - 09/06/2026" |

| OUTPUT |
| Comparación: Mostrada |
| Rutinas completadas: Comparadas |
| Nivel promedio de dolor: Comparado |
| Resultado: Mejoró |