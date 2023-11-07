<!DOCTYPE html>
<html lang="pt-br">
<<<<<<< HEAD
<%@ page contentType="text/html; charset=UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<head>
			<meta charset="UTF-8" />
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
=======
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
>>>>>>> f75c23089c36f3e36f863de7a64ed29c1d2fb40d
				</div>
				<div>
					<button onclick="redirecionarParaProcurando()">Procurando</button>
					<button onclick="redirecionarParaEncontrados()">Encontrados</button>
					<button onclick="redirecionarParaFerramentas()">Ferramentas</button>
					<button class="nav_btn" onclick="redirecionarParaAnuncie()">
						Anuncie
					</button>
					<c:if test="${sessionScope.loggedUser != null}">
						<button id="login">${loggedUser.nome} </button>
					</c:if>
					<c:if test="${sessionScope.loggedUser == null}">

						<button id="login">Login</button>
					</c:if>

				</div>
			</nav>
			<div class="page">
				<form action="/updateUser" method="post">

					<div class="perfil">
						<div class="pfp">

							<c:if test="${loggedUser.foto.equals('')}">
								<img src="../images/emptyprofile.png">
							</c:if>

							<c:if test="${loggedUser.foto.equals('') == false}">
								<img src="loggedUser.foto">
							</c:if>
							<img src="../images/pencil.png" alt="pencil" id="pencil" />
						</div>
						<div>
							<div>
								<h1 class="name" name="nome">
									${loggedUser.nome}
								</h1>
							</div>
							<div class="campos">
								<div class="campo">
									<h2>Email:</h2>
									<input type="text" name="nome" value="${loggedUser.email}">
									</input>
								</div>
								<div class="campo telefone">
									<h2>Celular:</h2>
									<input type="number" name="telefone" id="number" placeholder="(xx)xxxxx-xxxx"
										value="${loggedUser.telefone}" />
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
							<input type="text" name="cidade" id="cidade" value="${loggedUser.cidade}" />

						</div>
						<div class="endereco">

							<label for="bairro" class="big-label"> Bairro: </label>
							<input type="text" name="bairro" id="bairro" value="${loggedUser.bairro}" />
						</div>

						<button action="/updateUser">Confirmar</button>
						<button>Cancelar</button>
					</div>
				</form>

			</div>
			</div>
		</body>
		<script src="main.js"></script>
		<script src="../navscripts.js"></script>

</html>