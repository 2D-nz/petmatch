function initMap() {
    //centro do mapa
    var mapCenter = { lat: -23.5505, lng: -46.6333 };

    // Opções do mapa
    var mapOptions = {
        zoom: 14,
        center: mapCenter
    };

    var map = new google.maps.Map(document.getElementById('map'), mapOptions);

    var marker = new google.maps.Marker({
        position: mapCenter,
        map: map,
        title: 'Localização do pet'
    });
}
