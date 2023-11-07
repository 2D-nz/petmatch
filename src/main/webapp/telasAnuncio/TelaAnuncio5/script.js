function buscarCoordenadas() {
    var endereco = document.getElementById('endereco').value;
    var enderecoFormatado = encodeURIComponent(endereco); // Formata o endereço corretamente
    var url = 'https://' + 'geocode.maps.co/search?q=' + enderecoFormatado;

    fetch(url)
        .then(response => response.json())
        .then(data => {
            console.log(data); // Verifica a estrutura dos dados retornados pela API
            if (data.length > 0) {
                data.forEach(result => {
                    if (result.lat && result.lon) {
                        var latitude = result.lat;
                        var longitude = result.lon;
                        console.log(`Latitude: ${latitude}, Longitude: ${longitude}`);
                    } else {
                        console.error('Objeto de resultado inválido:', result);
                    }
                });
            } else {
                console.log(enderecoFormatado);
                console.error('Nenhum resultado de endereço encontrado.');
            }
        })
        .catch(error => {
            console.error('Erro ao buscar coordenadas:', error);
        });
}
