const theme = document.querySelector(".theme");

theme.addEventListener('click', ()=>{
    document.body.classList.toggle('dark-mode');
})

document.querySelector('.dowload').addEventListener('click', descargarPDF);


function descargarPDF(){
    window.open('./GabrielVelozo-CV.pdf', '_blank');
}