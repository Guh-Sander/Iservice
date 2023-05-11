function search_service() {
    let search = document.getElementById('busca').value.toLowerCase();
    let services = document.getElementsByClassName('service');
    let listBusca = document.getElementById('listBusca');

    for (let i = 0; i < services.length; i++) {
        let categoryService = services[i].querySelector('.categoryService');
        let serviceName = categoryService.textContent.toLowerCase();

        // Se não tiver nada pesquisado pelo usuário não aparece os campos de sugestão
        if (search.length > 1) {
            // Verifica se os serviços disponíveis, páginas HTML, condizem com o que está sendo pesquisado
            if (serviceName.includes(search)) {
            services[i].style.display = 'list-item';
        }  
        } else {
            services[i].style.display = 'none';
        }
    }
    listBusca.style.display = 'block';
}


function busca() {
    let search = 0;
    search = document.getElementById('busca').value.toLowerCase();
    let services = document.getElementsByClassName('service');

    for (let i = 0; i < services.length; i++) {
        let categoryService = services[i].querySelector('.categoryService');
        let serviceName = categoryService.textContent.toLowerCase();

        // Define que se o valor da pesquisa do filtro for igual a zero não buscará a lista com o href corretamente
        if (search != 0) {
            if (serviceName.includes(search)) {
                window.location.href = categoryService.getAttribute('href');
                return;
            }
        } else {
            return;
        }
    }
}

let button = document.getElementById('btnBusca');
let input = document.getElementById('busca');

// Adiciona um evento de keydown ao input
input.addEventListener('keydown', function(event) {
    // Verifica se a tecla pressionada foi a tecla Enter
    if (event.keyCode === 13) {
        event.preventDefault(); // Previne o comportamento padrão do Enter (submit do formulário)
        busca(); // Realiza a busca e vai para a página HTML correspondente
    }
});

// Adiciona um evento de click ao botão
button.addEventListener('click', function() {
    busca(); // Realiza a busca e vai para a página HTML correspondente
});