Feature: US24 - Modo offline para rutinas

  Como paciente en zonas con baja conectividad
  Quiero descargar mis rutinas previamente
  Para acceder a ellas sin conexión a internet

Scenario: Descargar rutina para uso offline

  Given el paciente tiene conexión a internet
  When accede a una rutina y presiona el ícono de descarga
  Then el sistema descarga el video y las instrucciones al almacenamiento del dispositivo
  And muestra el indicador "Disponible sin conexión"

Examples:

| INPUT |
| RutinaID: 300 |
| Acción: Clic en descargar |

| OUTPUT |
| Descarga: Completada |
| Estado: Disponible sin conexión |