function mostrarNotificacion(tipo, mensaje) {
    // Crear un nuevo elemento de notificación
    const notificacion = document.createElement('div');
    notificacion.classList.add('notificacion', tipo);
    notificacion.innerHTML = `
        <span class="cerrar">&times;</span>
        ${mensaje}
    `;

    const contenedor = document.getElementById('notificaciones');
    contenedor.appendChild(notificacion);
    setTimeout(() => {
        notificacion.style.display = 'block';
        notificacion.style.opacity = 1;
    }, 10);
    setTimeout(() => {
        notificacion.style.opacity = 0;
        setTimeout(() => {
            contenedor.removeChild(notificacion);
        }, 500);
    }, 5000);e
    notificacion.querySelector('.cerrar').addEventListener('click', () => {
        notificacion.style.opacity = 0;
        setTimeout(() => {
            contenedor.removeChild(notificacion);
        }, 500);
    });
}