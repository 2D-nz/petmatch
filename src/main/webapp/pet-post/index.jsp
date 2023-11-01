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

		<title></title>
    </head>
<body style="justify-content: space-evenly;">
	<nav class="topnav">
        <div>
            <img src="./images/dog-logo.png" />
            <h1>Petmatch</h1>
        </div>
        <div>
            <button onclick="redirecionarParaProcurando()">Procurando</button>
            <button onclick="redirecionarParaEncontrados()">Encontrados</button>
            <button onclick="redirecionarParaFerramentas()">Ferramentas</button>
            <button class="nav_btn" onclick="redirecionarParaAnuncie()">
                Anuncie
            </button>
            <button id="login">Login</button>
        </div>
    </nav>


    <c:forEach var="pet" items="${pets}">
	<main style="margin-top: 8%;">
        <div class="cardMid">
            <section class="top">
            <h3>${pet.endereco}</h3>
            <h2>${pet.descricao}</h2>
            <h3>${pet.mensagem}</h3>
            <label for="other_information">Outras informações:</label>
            <h3>${pet.data}</h3>
            </section>
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
                    <h3>${pet.nome}</h2>
                    <h3>${pet.situacao}</h3>
                    <h3>${pet.especie}</h3>
                    <h3>${pet.raca}</h3>
                    <h3>${pet.cor}</h3>
                    <h3>${pet.cordosolhos}</h3>
                    <h3>${pet.genero}</h5>
                </div>
            </div>
            </section>
        </div>
	</aside>

<footer>
    <div class="cardContainer">
        <section class="bot">
            <img src="./images/pet house.png" class="logo-img" />
            <hr class="line-contact">
            <h2>Contato</h2>
            <div class="contact-details">
                <div class="contact-title">
                    <h3>Email</h3>
                    <h3>Telefone</h3>
                </div>
                <div class="contact-item">
                    <p>xdd</p>
                    <p>1212121</p>
                </div>
            </div>
        </section>
    </div>
</footer>

    </c:forEach>
	<script type="text/javascript" src="assets/js/script.js"></script>
</body>
</html>