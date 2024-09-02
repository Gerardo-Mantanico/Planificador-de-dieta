const text = "Energiza tu vida con alimentos que te hagan brilla";
const typedTextSpan = document.getElementById("typed-text");
let index = 0;

function type() {
    typedTextSpan.textContent = text.slice(0, index);
    index++;

    if (index > text.length) {
        index = 0; // Reinicia el texto
    }

    setTimeout(type, 100); // Velocidad de escritura (100ms por letra)
}

type(); // Inicia la animación de escritura

