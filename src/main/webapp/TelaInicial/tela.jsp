<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="tela.css" />
		<link rel="stylesheet" href="nav.css" />
		<script src="tela.js" defer></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

		<title>Petmatch</title>
	</head>
	<body>
		<nav class="topnav">
			<div>
				<img src="./img/dog-logo.png" />
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
			<header>
				<h1 class="text1">Perdeu seu pet? <br />Nós te ajudamos a achar!</h1>

				<h3>
					Temos a ferramenta de busca perfeita para encontrar o seu melhor amigo
				</h3>
				<div class="banner">
					<img src="img/Banner2.png" alt="imagens de cachorros" class="img">
					<button class="btn1" onclick="redirecionarParaProcurando()"> 
						<img src="img/pata.png" class="pet">
						Procuro um PET
					</button>
					<button class="btn2"> <img src="img/bsc.png" class="dono">
						Procuro um DONO</button>
				</div>
			</header>
			<div class="t2"> 
				<h2 class="t1"> Detalhes sobre os nossos pets encontrados:</h2>
			</div>
			<section class="carousel-section">
				<div class="container-slider">
					<button id="prev-button"> <img src="img/arrow.png" alt=""></button>
					<div class="imagens">
						<img src="img/teste1.jpg" class="slider on">
						<img src="img/teste2.jpg" class="slider">
						<img src="img/teste3.jpg" class="slider">
					</div>
				</div>
				<div class="container-slider">
					<div class="imagens">
						<img src="img/teste1.jpg" class="slider on">
						<img src="img/teste2.jpg" class="slider">
						<img src="img/teste3.jpg" class="slider">
						<img src="img/dog-logo.png" class="slider">
					</div>
				</div>	
				<div class="container-slider">
					<div class="imagens">
						<img src="img/teste1.jpg" class="slider on">
						<img src="img/teste2.jpg" class="slider">
						<img src="img/teste3.jpg" class="slider">
					</div>
					<button id="next-button"> <img src="img/arrow.png" alt=""></button>
				</div>	
			</section>
			<div class="unit">
				<button class="btn1 unit"> Veja Mais </button>
		    </div>
	</body>
	<script src="script.js"></script>
	<script src="navscripts.js"></script>
</html>
