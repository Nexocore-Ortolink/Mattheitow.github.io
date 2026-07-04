Feature: US13 - Registro de especialista

  Como profesional de la salud
  Quiero registrarme en OrtoLink con mis datos de colegiatura
  Para acceder al panel de gestión de pacientes

Scenario: Registro exitoso con número de colegiatura válido

  Given el especialista accede al formulario de registro
  When ingresa nombre, correo, contraseña, especialidad y número de colegiatura
  And presiona "Registrarse como especialista"
  Then el sistema registra la cuenta como especialista
  And muestra el mensaje "Cuenta de especialista creada. Pendiente de verificación"

Examples:

| INPUT |
| Nombre: "Carlos Gómez" |
| Correo: "cgomez@hospital.com" |
| Especialidad: "Fisioterapia" |
| Colegiatura: "CMP12345" |

| OUTPUT |
| Registro: Exitoso |
| Estado: Pendiente de verificación |