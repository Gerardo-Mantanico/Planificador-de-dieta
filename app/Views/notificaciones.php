<?php require_once('header.php'); ?>
<div class="container-historial">
<div id="notificaciones"></div>
<!-- Botón para mostrar una notificación de ejemplo -->
<button onclick="mostrarNotificacion('exito', '¡Operación realizada con éxito!')">Mostrar Notificación de Éxito</button>
<button onclick="mostrarNotificacion('advertencia', 'Este es un mensaje de advertencia.')">Mostrar Notificación de Advertencia</button>
<button onclick="mostrarNotificacion('error', 'Ocurrió un error inesperado.')">Mostrar Notificación de Error</button>
<button onclick="mostrarNotificacion('informativo', 'Aquí tienes una notificación informativa.')">Mostrar Notificación Informativa</button>

</div>
<script src="js/notificacion.js"> </script>
<?php require_once("footer.php"); ?>