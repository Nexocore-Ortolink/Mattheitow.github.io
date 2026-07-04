Feature: US15 - Edición de perfil de paciente

  Como paciente
  Quiero editar mi información personal y datos de amputación
  Para mantener mi perfil actualizado

Scenario: Actualización exitosa del perfil

  Given el paciente accede a la sección "Mi Perfil"
  When modifica su nombre, foto de perfil o tipo de amputación
  And presiona "Guardar cambios"
  Then el sistema actualiza la información
  And muestra el mensaje "Perfil actualizado correctamente"

Examples:

| INPUT |
| Nombre: "Juan Pérez" |
| TipoAmputacion: "Transfemoral" |

| OUTPUT |
| Perfil: Actualizado |
| Mensaje: "Perfil actualizado correctamente" |