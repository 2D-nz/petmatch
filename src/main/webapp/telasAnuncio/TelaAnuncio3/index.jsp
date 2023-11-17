<!DOCTYPE html>
<html lang="pt-br">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Página de anúncio 3</title>
</head>
<body>
    <div class="container">
        <div class="form-image">
            <img src="/images/catdog.svg">
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
            <form action="/create-pet" method="post" enctype="multipart/form-data">
                <input type="hidden" id="id" name="id" value="${param.id}">
                <input type="hidden" id="user_id" name="user_id" value="${sessionScope.loggedUser.getId()}">
                <div class="input-group">
                    <div class="input-box">
                        <label for="mensagem" style="height: 180px;">Mensagem do Tutor:</label>
                        <textarea name="mensagem" id="mensagem" cols="30" rows="10" style="height: 120px;" class="placeBaixo" placeholder="Deixe sua Mensagem" required></textarea>
                        <label for="descricao" style="height: 180px;">Descrição:</label>
                        <textarea name="descricao" id="msg2" cols="30" rows="10" style="height: 120px;" class="placeBaixo" placeholder="Deixe sua Mensagem" required></textarea>
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