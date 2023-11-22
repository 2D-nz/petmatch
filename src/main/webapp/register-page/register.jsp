<!DOCTYPE html>
<html lang="pt-br">
<%@ page contentType="text/html; charset=UTF-8" %>

	<head>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
			<meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
			<meta name="viewport" content="width=device-width, initial-scale=1.0" />
			<link rel="stylesheet" href="/register-page/style.css" />
			<title>Register</title>
	</head>

	<body>
		<div class="main-login">
			<div class="left-login">
				<h1>Faça seu cadastro para buscar ou cadastrar seu amiguinho</h1>
				<img src="/register-page/dog-animate.svg" class="login-image" alt="Cachorro animation" />
			</div>
			<div class="right-login">
				<div class="card-login">
					<h1>Cadastre aqui</h1>
					<form name="formregistro" action="/register" method="post" onsubmit="return validaEmail(this.email.value)">
						<div class="text-field">
							<label for="usuario">E-mail</label>
							<input type="text" name="email" placeholder="E-mail" />
						</div>
						<div class="text-field">
							<label for="nome">Nome</label>
							<input type="text" name="nome" placeholder="Nome" />
						</div>
						<div class="text-field">
							<label for="senha">Senha</label>
							<input type="password" name="password" placeholder="Senha" />
						</div>
						<div class="text-field">
							<label for="senha">Confirme sua senha</label>
							<input type="password" name="password-confirm" placeholder="Senha" />
						</div>
						<c:if test="${not empty requestScope.error}">
                            <span class="error-message" id="error-message">${requestScope.error}</span>
                            <script>
                                setTimeout(function() {
                                    var errorMessage = document.getElementById("error-message");
                                    if (errorMessage) {
                                        errorMessage.style.display = "none";
                                    }
                                }, 3000);
                            </script>
                        </c:if>
						<button class="btn-login">Confirmar</button>
					</form>
				</div>
			</div>
		</div>
		<script src="/register-page/script.js"></script>
	</body>

</html>