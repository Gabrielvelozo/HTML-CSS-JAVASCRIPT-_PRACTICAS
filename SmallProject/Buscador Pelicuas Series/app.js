const $select = document.querySelector('select');
const $input = document.querySelector('.input');
const btn = document.querySelector('.btn');
const lista = document.querySelector('#lista');

let datosActules = [];

function cambiarJson(tipo){
    const archivo = tipo === 'peliculas' ? 'peliculas.json' : 'series.json';

    fetch(archivo)
    .then(res => res.json())
    .then(data => {
        datosActules = data.data;
        console.log(`${tipo} cargadas: `, datosActules);
    })
    .catch(error =>{
        console.error('error al cargar los datos : ', error);
    })
}

//* Evento change  para el boton select
$select.addEventListener(('change'), evento =>{
    const seleccion = evento.target.value.toLowerCase();
    cambiarJson(seleccion);
})

//* Evento para $input
$input.addEventListener('keydown',(e)=>{
    // const keyPress = e.keycode;
    
    // // A-Z 65-90 || a-z 97-122 || 32 espacio || 127 borrar
    // if(!(keyPress >=65 && keyPress <=90) && !(keyPress >=97 && keyPress <=122)){
    //     console.log(keyPress);
    // }
    
})

