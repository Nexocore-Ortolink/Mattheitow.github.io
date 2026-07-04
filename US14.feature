Feature: US14 - Recuperación de contraseña

  Como usuario
  Quiero recuperar mi contraseña olvidada mediante mi correo electrónico
  Para no perder el acceso a mi cuenta

Scenario: Envío de correo de recuperación exitoso

  Given el usuario se encuentra en la pantalla "Olvidé mi contraseña"
  When ingresa su correo registrado y presiona "Enviar enlace"
  Then el sistema envía un correo con el enlace de recuperación
  And muestra el mensaje "Revisa tu bandeja de entrada"

Examples:

| INPUT |
| Correo: "juan@gmail.com" |

| OUTPUT |
| Correo de recuperación: Enviado |
| Mensaje: "Revisa tu bandeja de entrada" |