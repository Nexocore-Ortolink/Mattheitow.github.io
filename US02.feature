Feature: US02 - Inicio de sesión

  Como usuario registrado
  Quiero iniciar sesión de forma segura
  Para acceder a mis rutinas y reportes

Scenario: Inicio de sesión exitoso

  Given el usuario se encuentra en la pantalla de inicio de sesión
  When ingresa su correo y contraseña correctos
  And presiona "Ingresar"
  Then el sistema valida las credenciales
  And redirige al usuario a la pantalla de inicio (Home)

Examples:

| INPUT |
| Correo: "juan@gmail.com", Contraseña: "Juan123*" |
| Acción: Clic en "Ingresar" |

| OUTPUT |
| Validación: Exitosa |
| Redirección: Home |