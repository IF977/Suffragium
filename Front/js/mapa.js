var map;
 
function initialize() {
    var latlng = new google.maps.LatLng(-8.0075658, -35.02218949999997);
 
    var options = {
        zoom: 5,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
 
    map = new google.maps.Map(document.getElementById("mapa"), options);
}
 
initialize();

function carregarPontos() {
 
    $.getJSON('js/pontos.json', function(pontos) {
 
        $.each(pontos, function(index, ponto) {
 
            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(ponto.Latitude, ponto.Longitude),
                title: "Meu ponto personalizado! :-D",
                map: map
            });
 
        });
 
    });
 
}
 
carregarPontos();