<!DOCTYPE html>
<html lang="pt-br">
	<%@ page contentType="text/html; charset=UTF-8" %>
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="styles.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

		<title>Petmatch</title>
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
				<button id="login"><a href="login-page/login.jsp"> Login</a></button>
			</div>
		</nav>
		<main>
			<header>
				<h1>Perdeu seu pet? <br />Nós te ajudamos a achar!</h1>

				<h3>
					Temos a ferramenta de busca perfeita para encontrar o seu melhor amigo
				</h3>
				<button class="btnGrande">Procuro um PET</button>
				<button class="btnGrande">Procuro um DONO</button>

				<h2>
					Veja o tutorial de como usar nossas <a href="#"> Ferramentas </a>
					<hr />
				</h2>
			</header>

			<section>
				<h2>
					Pets perdidos recentemente:
					<hr />
				</h2>
				<div class="petsPerdidos">
					<div class="petPerdido">
						<div class="dadosPet">
							<img src="./src/img/johnny.jpeg" alt="" />
							<h3 class="nomePet">Johnny Bravo</h3>
							<span class="localPet">
								<img
									src="./src/img/localization-pin.png"
									alt="pin de localização"
								/>
								Pq São Lucas - São Paulo
							</span>

							<div class="tags">
								<p class="tag">Dócil</p>
								<p class="tag">Pequeno</p>
								<p class="tag">Branco</p>
							</div>

							<button>Mais detalhes</button>
						</div>
					</div>
					<div class="petPerdido">
						<div class="dadosPet">
							<img src="./src/img/johnny.jpeg" alt="" />
							<h3 class="nomePet">Johnny Bravo</h3>
							<span class="localPet">
								<img
									src="./src/img/localization-pin.png"
									alt="pin de localização"
								/>
								Pq São Lucas - São Paulo
							</span>

							<div class="tags">
								<p class="tag">Dócil</p>
								<p class="tag">Pequeno</p>
								<p class="tag">Branco</p>
							</div>

							<button>Mais detalhes</button>
						</div>
					</div>
					<div class="petPerdido">
						<div class="dadosPet">
							<img src="./src/img/johnny.jpeg" alt="" />
							<h3 class="nomePet">Johnny Bravo</h3>
							<span class="localPet">
								<img
									src="./src/img/localization-pin.png"
									alt="pin de localização"
								/>
								Pq São Lucas - São Paulo
							</span>

							<div class="tags">
								<p class="tag">Dócil</p>
								<p class="tag">Pequeno</p>
								<p class="tag">Branco</p>
							</div>

							<button>Mais detalhes</button>
						</div>
					</div>
				</div>
				<div>
					<button class="vejaMais">Veja mais</button>
				</div>
			</section>
			<section>
				<h2>
					Pets encontrados por aqui
					<hr />
				</h2>

				<div class="petsEncontrados">
					<div class="petEncontrado">
						<img src="" alt="fot do dog" />
						<h2>Nome do Cachorro</h2>
						<p class="relato">
							"Eu estava procurando meu cachorro por dois dias, e não acreditei
							quando chegou a notificação do PetMatch..."
						</p>
						<p>Ler mais</p>
					</div>
					<div class="petEncontrado">
						<img src="" alt="fot do gatito" />
						<h2>Nome do Cachorro</h2>
						<p class="relato">
							"Graças ao PetMatch eu e o Mingau nos encontramo de novo"
						</p>
						<p>Ler mais</p>
					</div>
				</div>
				<div>
					<button class="vejaMais">Veja mais</button>
				</div>
			</section>
		</main>

		<footer>
			<p>Entre em contato conosco!</p>
		</footer>
	</body>
	<script src="./scripts.js"></script>
</html>