Feature: US21 - Asignación de rutina personalizada

  Como especialista
  Quiero asignar rutinas personalizadas a cada paciente
  Para adaptar el tratamiento a su condición específica

Scenario: Asignar rutina existente a un paciente

  Given el especialista accede al perfil de un paciente
  When selecciona "Asignar rutina" y elige ejercicios de la biblioteca
  And presiona "Confirmar asignación"
  Then el sistema guarda la rutina en el perfil del paciente
  And el paciente recibe una notificación de nueva rutina asignada

Examples:

| INPUT |
| PacienteID: 105 |
| Ejercicios: "Flexión de rodilla, Elevación de pierna" |
| Acción: Clic en "Confirmar asignación" |

| OUTPUT |
| Rutina: Asignada |
| Notificación: Enviada al paciente |