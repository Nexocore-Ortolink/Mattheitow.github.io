Feature: US17 - Cierre de sesión

  Como usuario
  Quiero cerrar sesión de forma segura
  Para proteger mi información personal en dispositivos compartidos

Scenario: Cierre de sesión exitoso

  Given el usuario está autenticado en la aplicación
  When accede al menú de perfil y presiona "Cerrar sesión"
  Then el sistema muestra una confirmación "¿Deseas cerrar sesión?"
  And al confirmar, redirige al usuario a la pantalla de inicio de sesión

Examples:

| INPUT |
| Acción: Confirmar cierre de sesión |

| OUTPUT |
| Sesión: Cerrada |
| Redirección: Inicio de sesión |