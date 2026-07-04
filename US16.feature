Feature: US16 - Gestión de pacientes

  Como especialista
  Quiero administrar la información de mis pacientes
  Para llevar un control organizado de sus tratamientos

Scenario: Agregar un nuevo paciente

  Given el especialista accede a la sección "Mis Pacientes"
  When presiona "Agregar paciente" e ingresa el correo del paciente registrado
  Then el sistema vincula al paciente con el especialista
  And el paciente aparece en la lista del especialista

Examples:

| INPUT |
| CorreoPaciente: "paciente@gmail.com" |

| OUTPUT |
| Paciente vinculado: Sí |
| Visible en lista: Sí |