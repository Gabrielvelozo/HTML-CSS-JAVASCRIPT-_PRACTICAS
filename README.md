
# Practicas  
https://keen-alpaca-3efdf3.netlify.app/              --            (HTML-CSS-JS) Dark Mode                   
https://brilliant-muffin-a38270.netlify.app/         --            (HTML-CSS-JS) Reloj Digital                 
https://playful-halva-13efc9.netlify.app/            --            (HTML-CSS-JS) Generador de contraseñas                                  
https://lively-meringue-9d71b3.netlify.app/          --            (HTML-CSS-JS) Calcualadora V-1          
https://effortless-manatee-9dceb4.netlify.app/       --            (HexColor - Random HTML-CSS-JS)                                                                         
https://timely-capybara-1d9f66.netlify.app/          --            (ToDoList - #2 HTML-CSS-JS)                          
https://helpful-cactus-360c68.netlify.app/           --            (ToDoList - #1 HTML-CSS-JS)                     
https://eclectic-belekoy-423bee.netlify.app/         --            (Card HTML - HTML-CSS) || FrontEndMentor                 
https://keen-chaja-9335f6.netlify.app/               --            (Card QR - HTML-CSS) || FrontEndMentor                     
https://brilliant-paletas-840177.netlify.app/        --            (HTML-CSS) website Coffe                  
https://stirring-fairy-61e9ad.netlify.app/           --            (HTML-CSS) website remeras              
https://benevolent-dieffenbachia-3259f9.netlify.app/ --            (HTML-CSS) Website practica                
https://gabrielvelozo.netlify.app/                   --            (HTML-CSS) website Casas             
https://my-project-4-gv.netlify.app/                 --            (HTML-CSS) Website Card                
https://practicas-muebles-2025.netlify.app/          --            (HTML-CSS) Website Muebles              
https://my-project-gv-2.netlify.app/                 --            (HTML-CSS) Website Auriculares



# DOM JavaScript Cheatsheet

## 📌 Selección de Elementos
```javascript
document.getElementById('id');                     // Selecciona por ID (retorna 1 elemento)
document.getElementsByClassName('clase');         // Por clase (retorna HTMLCollection)
document.getElementsByTagName('div');             // Por etiqueta (retorna HTMLCollection)
document.querySelector('.clase o #id o tag');     // CSS selector (retorna el primero)
document.querySelectorAll('.clase o tag');       // CSS selector (retorna NodeList)

## ✏️ Manipulación de Contenido/Atributos
elemento.innerHTML = '<p>HTML</p>';               // Modifica HTML interno
elemento.textContent = 'texto';                   // Modifica texto (escapado)
elemento.getAttribute('atrib');                   // Obtiene valor de atributo
elemento.setAttribute('atrib', 'valor');          // Cambia valor de atributo
elemento.removeAttribute('atrib');                // Elimina atributo
elemento.classList.add/remove/toggle('clase');    // Gestiona clases CSS
elemento.style.color = 'red';                     // Modifica estilos inline

## 🏗️ Creación/Eliminación de Nodos
elemento.innerHTML = '<p>HTML</p>';               // Modifica HTML interno
elemento.textContent = 'texto';                   // Modifica texto (escapado)
elemento.getAttribute('atrib');                   // Obtiene valor de atributo
elemento.setAttribute('atrib', 'valor');          // Cambia valor de atributo
elemento.removeAttribute('atrib');                // Elimina atributo
elemento.classList.add/remove/toggle('clase');    // Gestiona clases CSS
elemento.style.color = 'red';                     // Modifica estilos inline

## 🎯 Eventos
elemento.addEventListener('click', (e) => {       // Añade evento
  console.log(e.target);                          // Elemento que disparó el evento
});
elemento.removeEventListener('click', funcion);   // Elimina evento
// Eventos comunes: click, mouseenter, keydown, submit, load

## 🌳 Navegación del DOM
elemento.parentNode;                              // Nodo padre
elemento.childNodes;                              // Hijos (incluye textos)
elemento.children;                                // Solo elementos hijos
elemento.nextElementSibling;                      // Hermano siguiente
elemento.previousElementSibling;                  // Hermano anterior

## 🌐 Window/Document
window.innerWidth/innerHeight;                    // Tamaño ventana
document.title = 'Nuevo título';                  // Get/Set título página
window.scrollTo(x, y);                            // Scroll a posición

## 💾 Almacenamiento
localStorage.setItem('clave', 'valor');           // Persistente
sessionStorage.setItem('clave', 'valor');         // Por pestaña
// .getItem('clave') y .removeItem('clave')

## Tips:
querySelectorAll retorna NodeList (no array, usar Array.from() si necesitas métodos)

Prefiere textContent sobre innerHTML para seguridad XSS

Usa classList en vez de className para mejor control de clases
