Feature: US45 - Modo de alto contraste

  Como paciente con baja visión o que usa la app en ambientes con mucha luz
  Quiero activar el modo de alto contraste
  Para ver mejor los elementos de la pantalla

Scenario: Activar modo de alto contraste

  Given el paciente accede a "Configuración > Accesibilidad"
  When activa el interruptor "Alto contraste"
  Then el sistema cambia la paleta de colores
  And aplica el cambio en toda la interfaz sin recargar

Examples:

| INPUT |
| AltoContraste: Activado |

| OUTPUT |
| Modo alto contraste: Activo |
| Interfaz actualizada: Sí |