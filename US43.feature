Feature: US43 - Onboarding guiado para nuevos usuarios

  Como paciente que usa OrtoLink por primera vez
  Quiero recibir una guía interactiva inicial
  Para entender cómo usar la aplicación sin necesidad de asistencia externa

Scenario: Completar tutorial de onboarding en primer inicio

  Given el paciente inicia la app por primera vez tras registrarse
  When el sistema detecta que es su primer acceso
  Then muestra automáticamente un tutorial de 4 pasos
  And cada paso tiene una ilustración y texto descriptivo simple

Examples:

| INPUT |
| PrimerAcceso: Sí |
| UsuarioID: 105 |

| OUTPUT |
| Tutorial: Mostrado |
| Pasos: 4 |
| Ilustraciones: Disponibles |