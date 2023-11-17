<!DOCTYPE html>
<html lang="pt-br">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<head>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="/pet-post/style.css"/>
		<link rel="stylesheet" href="../nav.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </script>

		<title></title>
    </head>
<body style="justify-content: space-evenly;">


    <c:forEach var="pet" items="${pets}">
    <main style="margin-top: 8%;">
    <div class="tela" style="margin-bottom: 20%;">
        <div class="cardMid">
        <div id="map" class="mapa"></div>
            <section class="mid">
                <p class="titulo">Ultima local visto em:</p>
                <hr>
                <h3 class="descricao">${pet.endereco}</h3>
                <p class="titulo">Data de desaparecimento</p>
                <h3 class="descricao">${pet.formattedDate}</h3>
                <p class="titulo">Descrição</p>
                <h3 class="descricao">${pet.descricao}</h2>
                <p class="titulo">Mensagem do tutor</p>
                <h3 class="descricao">${pet.mensagem}</h3>
            </section>
        </div>
    </div>
    </main>

<div class="content" style="margin-left: 3%;">
	<aside>
        <div class="cardContainer">
            <section class="top">
            <img src="${pet.image}" alt="dog" class="dog-image" />
            <hr>
            <div class="contact-details">
                <div class="contact-title">
                    <h3>Nome</h3>
                    <h3>Situação</h3>
                    <h3>Espécie</h3>
                    <h3>Raça</h3>
                    <h3>Cor</h3>
                    <h3>Cor dos olhos</h3>
                    <h3>Gênero</h3>
                </div>
                <div class="contact-item">
                    <h3>${pet.nome}</h3>
                    <h3>${pet.situacao}</h3>
                    <h3>${pet.especie}</h3>
                    <h3>${pet.raca}</h3>
                    <h3>${pet.cor}</h3>
                    <h3>${pet.cordosolhos}</h3>
                    <h3>${pet.genero}</h3>
                </div>
            </div>
            </section>
        </div>
	</aside>

<footer>
    <div class="cardContainer">
        <section class="bot">
            <img src="./images/pet house.png" class="logo-img" />
            <hr style="margin-top: 80px;">
            <h2 style="margin-bottom: 15px;">Contato</h2>
            <div class="contact-details">
                <div class="contact-title">
                    <h3 style="margin-bottom: 10px;">Email</h3>
                    <h3>Telefone</h3>
                </div>
                <div class="contact-item">
                    <h3 style="margin-bottom: 10px;">xdd</h3>
                    <h3>1212121</h3>
                    </div>
                </div>
            </div>
        </section>
    </div>
</footer>

    </c:forEach>
	 <script src="/pet-post/scripts.js"></script>
	  <script>
             function initMap() {
                 var latitude = <%= request.getAttribute("latitude") %>;
                 var longitude = <%= request.getAttribute("longitude") %>;

                 // Verifique se a latitude e longitude não são nulos
                 if (latitude != null && longitude != null) {
                     // Centro do mapa
                     var mapCenter = { lat: parseFloat(latitude), lng: parseFloat(longitude) };

                     // Opções do mapa
                     var mapOptions = {
                         zoom: 16,
                         center: mapCenter
                     };

                     var map = new google.maps.Map(document.getElementById('map'), mapOptions);

                     var marker = new google.maps.Marker({
                         position: mapCenter,
                         map: map,
                         title: 'Localização do pet'
                     });
                 } else {
                     // Caso as coordenadas sejam nulas, você pode exibir uma mensagem ou ação alternativa.
                     var mapContainer = document.getElementById('map');
                     mapContainer.innerHTML = "Coordenadas não encontradas.";
                 }
             }
         </script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBWmm6vyFNNgsEMEzKd7P3IHtCS4Say9WY&callback=initMap" async defer></script>
</body>
</html>