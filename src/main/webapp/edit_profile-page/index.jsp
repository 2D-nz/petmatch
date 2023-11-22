<!DOCTYPE html>
<html lang="pt-br">
<%@ page contentType="text/html; charset=UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ include file="/navBar.jsp" %>

			<head>
				<meta charset="UTF-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1.0" />
				<title>Editar perfil</title>
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
				<link rel="stylesheet" href="./styles.css" />
			</head>

			<body>

				<div class="page">
					<form action="/updateUser" method="post" enctype="multipart/form-data">

						<div class="perfil">
						<input type="hidden" name="userId" value="${loggedUser.id}"/>
                            <div class="pfp">
                                    <label for="image"><img src="../images/pencil.png" alt="pencil" id="pencil" /></label>
                                    <img src="../${loggedUser.foto}">
                                    <input type="file" id="image" name="image" accept="image/*" style="display: none;">
                            </div>
                            <div>
                                <div>
                                    <h1 class="name" name="nome">
                                        <h2>Nome:</h2>
                                        <input type="text" required name="nome" value="${loggedUser.nome}">
                                    </h1>
                                </div>
                                <div class="campos">
                                    <div class="campo">
                                        <h2>Email:</h2>
                                        <input type="text" required name="email" value="${loggedUser.email}">
                                        </input>
                                    </div>
                                    <div class="campo telefone">
                                        <h2>Celular:</h2>
                                        <input type="number" name="telefone" id="number" required
                                            placeholder="(xx)xxxxx-xxxx" value="${loggedUser.telefone}" />
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

			<script src="../navscripts.js"></script>
</html>