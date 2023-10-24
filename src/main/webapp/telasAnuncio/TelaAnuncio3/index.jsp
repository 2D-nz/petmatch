<!DOCTYPE html>
<html lang="pt-br">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Página de anúncio 3</title>
</head>
<body>
    <div class="container">
        <div class="form-image">
            <img src="assets/img/catdog.svg">
        </div>
        <div class="form">
                <div class="form-header">
                    <div class="title">
                        <h1>Anuncie seu pet</h1>
                    <div class="p">
                        <p>Crie com amor o seu anúncio para acessar o Painel de Busca dos fofinhos, onde você terá acesso a incríveis ferramentinhas para encontrar seus amiguinhos peludos.</p>
                    </div>
                    </div>
                </div>
            <form action="/create-pet" method="post">
                <input type="hidden" id="id" name="id" value="${param.id}">
                <!-- Campos da TelaAnuncio1 -->
                <input type="hidden" name="situacao" value="${param.situacao}">
                <input type="hidden" name="especie" value="${param.especie}">
                <input type="hidden" name="genero" value="${param.genero}">

                <!-- Campos da TelaAnuncio2 -->
                <input type="hidden" name="nome" value="${param.nome}">
                <input type="hidden" name="raca" value="${param.raca}">
                <input type="hidden" name="cor" value="${param.cor}">
                <input type="hidden" name="cordosolhos" value="${param.cordosolhos}">
                <!-- Adicione outros campos da TelaAnuncio2 aqui -->
                <div class="input-group">
                    <div class="input-box">
                        <label for="msg" style="height: 180px;">Mensagem do Tutor:</label>
                        <textarea name="msg" id="msg" cols="30" rows="10" style="height: 120px;" class="placeBaixo" placeholder="Deixe sua Mensagem" required></textarea>
                        <label for="msg2" style="height: 180px;">Descrição:</label>
                        <textarea name="msg2" id="msg2" cols="30" rows="10" style="height: 120px;" class="placeBaixo" placeholder="Deixe sua Mensagem" required></textarea>
                    </div>
                </div>
                    <div class="login-button">
                    <div class="voltar">
                        <button><a href="#">Voltar</a></button>
                    </div>
                    <div class="prosseguir">
                            <input type="hidden" name="page" value="4">
                            <button type="submit">Prosseguir</button>
                        </form>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
<script src="./../script.js"></script>
</html>