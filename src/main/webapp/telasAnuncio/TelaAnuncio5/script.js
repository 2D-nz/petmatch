document.addEventListener("DOMContentLoaded", function () {
    var enderecoInput = document.getElementById("endereco");

    enderecoInput.addEventListener("blur", function () {
        buscarCoordenadas();
    });

    function buscarCoordenadas() {
        var endereco = enderecoInput.value;
        var enderecoFormatado = encodeURIComponent(endereco);

        var url = 'https://' + 'geocode.maps.co/search?q=' + enderecoFormatado;

        fetch(url)
            .then(response => response.json())
            .then(data => {
                console.log(data);
                if (data.length > 0) {
                    data.forEach(result => {
                        if (result.lat && result.lon) {
                            var latitude = result.lat;
                            var longitude = result.lon;
                            console.log(`Latitude: ${latitude}, Longitude: ${longitude}`);

                            document.getElementById('latitude').value = latitude;
                            document.getElementById('longitude').value = longitude;

                            console.log("Está caindo aqui");

                            document.getElementById('submitButton').removeAttribute('disabled');
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
});
