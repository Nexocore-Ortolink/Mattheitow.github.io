Feature: US11 - Biblioteca de ejercicios

  Como especialista
  Quiero subir y validar ejercicios
  Para brindar contenido seguro y confiable a mis pacientes

Scenario: Subir un nuevo ejercicio

  Given el especialista accede a la biblioteca de ejercicios
  When sube un video, ingresa el título, descripción y nivel de dificultad
  And presiona "Publicar ejercicio"
  Then el ejercicio queda disponible para asignarlo a sus pacientes

Examples:

| INPUT |
| Título: "Flexión de rodilla" |
| Descripción: "Ejercicio básico de fortalecimiento" |
| Nivel: "Básico" |
| Video: "flexion.mp4" |

| OUTPUT |
| Ejercicio: Publicado |
| Disponible para asignación: Sí |