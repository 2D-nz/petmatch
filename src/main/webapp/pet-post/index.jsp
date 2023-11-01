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
<body>
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
	<main style="margin-top: 7.2%;">
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
            <h2>${pet.nome}</h2>
            <h3>${pet.situacao}</h3>
            <h5>${pet.especie}</h3>
            <h5>${pet.raca}, ${pet.cor}</h3>
            <h5>${pet.cordosolhos}</h3>
            <h5>${pet.genero}</h5>
            </section>
        </div>
	</aside>

	<footer>
        <div class="cardContainer">
            <section class="top">
                <img src="./images/dog-logo.png" />
                <h2>Contato</h2>
                <h3>Email</h3>
                <h5>Telefone</h5>
            </section>
        </div>
    </footer>
    </c:forEach>
	<script type="text/javascript" src="assets/js/script.js"></script>
</body>
</html>