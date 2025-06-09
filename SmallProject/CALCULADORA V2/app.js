const $btns = document.querySelectorAll('.btn');
const display =  document.querySelector('.display');

$btns.forEach(btn => {
    btn.addEventListener('click', () => {

        display.textContent += btn.textContent;

        if( btn.textContent == 'C'){
            display.textContent = '';
        }
       
      

    });
});


