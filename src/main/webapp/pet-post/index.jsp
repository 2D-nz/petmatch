<!DOCTYPE html>
<html lang="pt-br">
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<head>
		<page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="pet-post/styles.css" />
		<link rel="stylesheet" href="../nav.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

		<title></title>
	</head>
	<body>
		<nav class="topnav">
			<div>
				<img src="../images/dog-logo.png" />
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

		<main>
		<c:forEach var="pet" items="${pets}">
			<div class="post-container">
				<div class="image-container">
					<img src="${pet.image}" alt="dog" class="dog-image" />
				</div>
				<div>
					<span class="dados-primarios-pet">
						<h1>${pet.nome} <img src="../images/icons/male-sign.svg" /></h1>
						<p>
							<img
								src="../images/icons/pin-outline.svg"
								alt="localization pin"
								class="local-pin"
							/>
							Pq. São Lucas - São Paulo, SP
						</p>
					</span>
					<div class="dados-pet">
						<div>
							<h3>Raça:</h3>
							<p>${pet.raca}</p>
						</div>
						<div>
							<h3>Espécie</h3>
							<p>${pet.especie}</p>
						</div>
						<div>
							<h3>Cor dos olhos:</h3>
							<p>${pet.cordosolhos}</p>
						</div>
						<div>
							<h3>Cor:</h3>
							<p>${pet.cor}</p>
						</div>
					</div>
				</div>

				<div class="status">
					<h2 id="status" class="procurando">Procurando</h2>
					<p>${pet.situacao}</p>
				</div>
				<div class="descricao">
					<h2>Descrição:</h2>
					<p>${pet.descricao}</p>
				</div>
			</div>
		</main>
    </c:forEach>
	</body>
	<script src="scripts.js"></script>
	<script src="../navscripts.js"></script>
</html>