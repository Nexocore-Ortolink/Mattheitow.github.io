Feature: US01 - Registro de paciente

  Como paciente amputado
  Quiero registrarme en OrtoLink con mi correo y contraseña
  Para acceder a un seguimiento personalizado de mi rehabilitación

Scenario: Registro exitoso con datos válidos

  Given el paciente accede a la pantalla de registro
  When ingresa nombre, correo válido, contraseña y tipo de amputación
  And presiona el botón "Crear cuenta"
  Then el sistema crea la cuenta
  And muestra el mensaje "Cuenta creada exitosamente"
  And redirige al paciente al onboarding inicial

Examples:

| INPUT |
| Nombre: "Juan Pérez", Correo: "juan@gmail.com", Contraseña: "Juan123*", TipoAmputacion: "Transtibial" |
| Acción: Clic en el botón "Crear cuenta" |

| OUTPUT |
| Mensaje: "Cuenta creada exitosamente" |
| Redirección: Onboarding inicial |