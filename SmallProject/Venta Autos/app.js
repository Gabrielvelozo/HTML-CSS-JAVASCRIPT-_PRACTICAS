const lista1 = document.querySelector('.a1');
const lista2 = document.querySelector('.a2');
const lista3 = document.querySelector('.a3');

function Automovil(marca, modelo, color, anio, titular){
     this.marca = marca;
     this.modelo = modelo;
     this.color = color;
     this.anio = anio;
     this.titular = titular;
}

const auto1 = new Automovil('Renault', 'Clio','Negro' ,2011, 'Gabriel');
const auto2 = new Automovil('Peugeot', 208, 'Gris', 2021, 'Brenda');
const auto3 = new Automovil('Toyota', 'Hylux', 'Blanco', 2017, 'Oscar');

const autos = [auto1,auto2,auto3];

Automovil.prototype.venderAutomovil = function(nuevoTitular){
    this.titular = nuevoTitular;
};

Automovil.prototype.verAuto = function(){
   const verinfo = `${this.marca} : ${this.modelo}  -  ${this.anio} -- [${this.titular}]`
   return verinfo;
};

document.querySelector('.btn').addEventListener('click',()=>{
      for (let auto of autos){
            let li = document.createElement('li');
            li.textContent = auto.verAuto();
            lista1.appendChild(li);
            li = document.createElement('li');
            li.textContent = auto.verAuto();
            lista2.appendChild(li);
            li = document.createElement('li');
            li.textContent = auto.verAuto();
            lista3.appendChild(li);

        }
})

Automovil.prototype.encender = function(){
    alert(`El automovil esta en marcha`);
};


