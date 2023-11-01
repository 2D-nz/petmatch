<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Editar perfil</title>
		<link rel="stylesheet" href="../nav.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		<link rel="stylesheet" href="./styles.css" />
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
		<div class="page">
			<div class="perfil">
				<div class="pfp">
					<img src="../images/megumi.jpg" alt="Foto de perfil" id="pfp" />
					<img
					src="../images/pencil.png"
					alt="pencil"
					id="pencil"
				/>
				</div>
				<div>
					<div>
						<h1 class="name">
							Megumi Fushiguro
							<img
								src="../images/pencil.png"
								alt="pencil"
								id="pencil"
							/>
						</h1>
					</div>
					<div class="campos">
						<div class="campo">
							<h2>Email:</h2>
							<p id="email">meguminho@catiorrao.com.br</p>
						</div>
						<div class="campo telefone">
							<h2>Celular:</h2>
							<input
								type="number"
								name="number"
								id="number"
								value="11995587433"
							/>
							<div class="checkboxes">
								<input type="checkbox" id="whatsapp" name="whatsapp" checked />
								<label for="whatsapp">Whatsapp</label>
								<input type="checkbox" id="SMS" name="SMS" checked />
								<label for="SMS">SMS</label>
								<input type="checkbox" id="call" name="call" checked />
								<label for="call">Ligação</label>
							</div>
						</div>
					</div>
				</div>

				<div class="endereco">

					<label for="cidade" class="big-label"> Cidade: </label>
					<input type="text" name="cidade" id="cidade" value="Shibuya" />
					
				</div>
				<div class="endereco">

					<label for="bairro" class="big-label"> Bairro: </label>
					<input type="text" name="bairro" id="bairro" value="Shibuya" />
				</div>

					<button>Confirmar</button>
					<button>Cancelar</button>
			</div>
			</div>
		</div>
	</body>
	<script src="main.js"></script>
	<script src="../navscripts.js"></script>
</html>
