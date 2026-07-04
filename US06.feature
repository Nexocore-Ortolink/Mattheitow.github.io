Feature: US06 - Reporte de progreso

  Como paciente
  Quiero generar reportes de mi progreso
  Para compartirlos con mi especialista

Scenario: Generar reporte automático

  Given el paciente accede a la sección "Reportes"
  When presiona "Generar reporte"
  Then el sistema crea un reporte con ejercicios completados y evolución del dolor
  And muestra opciones para compartir por WhatsApp, correo o descargar en PDF

Examples:

| INPUT |
| PacienteID: 105 |
| Acción: Clic en "Generar reporte" |

| OUTPUT |
| Reporte: Generado |
| Formatos: PDF |
| Compartir: WhatsApp, Correo |