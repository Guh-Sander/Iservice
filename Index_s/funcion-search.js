function search_service() {
    let search = document.getElementById('busca').value.toLowerCase();
    let services = document.getElementsByClassName('service');
    let listBusca = document.getElementById('listBusca');

    for (let i = 0; i < services.length; i++) {
        let categoryService = services[i].querySelector('.categoryService');
        let serviceName = categoryService.textContent.toLowerCase();

        if (serviceName.includes(search)) {
            services[i].style.display = 'list-item';
        } else {
            services[i].style.display = 'none';
        }
    }

    listBusca.style.display = 'block';
}

let btnBusca = document.getElementById('btnBusca');
btnBusca.addEventListener('click', function() {
    let search = document.getElementById('busca').value.toLowerCase();
    let services = document.getElementsByClassName('service');

    for (let i = 0; i < services.length; i++) {
        let categoryService = services[i].querySelector('.categoryService');
        let serviceName = categoryService.textContent.toLowerCase();

        if (serviceName.includes(search)) {
            window.location.href = categoryService.getAttribute('href');
            return;
        }
    }
});