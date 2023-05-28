let buttonMenu = document.getElementById('menu_icone');
let div = document.getElementsByClassName('MenuInlineBlock');

// Adiciona um evento de click ao botão
buttonMenu.addEventListener('click', function() {
    for (let i = 0; i < div.length; i++) {
        if (div[i].style.display === 'none') {
            div[i].style.display = 'flex';
        } else {
            div[i].style.display = 'none';
        }
    }
});