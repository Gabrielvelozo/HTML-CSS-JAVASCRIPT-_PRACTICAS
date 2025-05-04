const input = document.querySelector('.input');
const button = document.querySelector('.button');
const form = document.querySelector('.form');
const listContainer = document.querySelector('.list-container');

form.addEventListener('submit',manejarSubmit);

mensaje();

// Funciones 
function mensaje(){
    const h3 = document.createElement('h3');
    
    h3.classList.add('mensaje-tarea');

    h3.textContent = listContainer.firstElementChild ? 'Tareas por hacer': 'No hay tareas aún';

    const mensajePrevio = document.querySelector('.mensaje-tarea');

    if(mensajePrevio){
        mensajePrevio.replaceWith(h3);
        return;
    }

    listContainer.before(h3);
}

function manejarSubmit(e){
   
    e.preventDefault();
    
    const valorInput = input.value; 

    
    crearTarea(valorInput);

    this.reset(); 
    mensaje();
}

function crearTarea(valor){
    
    const nuevaTarea = document.createElement("li");

    
    nuevaTarea.textContent = valor;
   
    listContainer.prepend(nuevaTarea);   

    agregarEvento(nuevaTarea);
}

function agregarEvento(element){
    element.addEventListener('dblclick',function(){
        element.remove();
        mensaje();
    });
}
