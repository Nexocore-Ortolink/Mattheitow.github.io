Feature: US46 - Modo oscuro para especialistas

  Como especialista que trabaja en guardias nocturnas
  Quiero activar el modo oscuro en la plataforma web
  Para reducir la fatiga visual

Scenario: Activar modo oscuro en el dashboard web

  Given el especialista usa la versión web de OrtoLink de noche
  When presiona el interruptor de modo oscuro en la barra de navegación
  Then toda la interfaz cambia a fondo oscuro con texto claro

Examples:

| INPUT |
| ModoOscuro: Activado |

| OUTPUT |
| Tema: Oscuro |
| Interfaz actualizada: Sí |