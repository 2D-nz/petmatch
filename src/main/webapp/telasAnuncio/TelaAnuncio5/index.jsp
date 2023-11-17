<!DOCTYPE html>
<html lang="pt-br">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                    <h1>Anúncie seu pet</h1>
                </div>
            </div>
            <form action="/create-pet" method="post" enctype="multipart/form-data">
                <div class="input-group">
                    <input type="hidden" id="id" name="id" value="${param.id}">
                    <input type="hidden" id="user_id" name="user_id" value="${sessionScope.loggedUser.getId()}">
                    <div class="input-box">
                        <p>
                            <label for="mes">Data do desaparecimento:</label>
                            <input type="date" name="data" id="data" class="date">
                        </p>
                        <label for="description">Endereço:</label>
                        <input id="endereco" type="text" name="endereco" class="p1" required autocomplete="address">
                        <input type="hidden" id="latitude" name="latitude" value="${latitude}">
                        <input type="hidden" id="longitude" name="longitude" value="${longitude}">
                        <label onclick="buscarCoordenadas()">Buscar Coordenadas</label>
                        <label for="tel">Telefone com WhatsApp:</label>
                        <div class="phone-input">
                            <input type="text" name="telefone" id="telefone" title="Formato esperado: (99) 9999-9999">
                        </div>
                        <input type="hidden" name="page" value="6">
                    </div>
                </div>
                <div class="login-button">
                    <div class="voltar">
                        <button><a href="#">Voltar</a></button>
                    </div>
                    <div class="prosseguir">
                        <button disabled type="submit" id="submitButton">Prosseguir</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
<script src="/telasAnuncio/TelaAnuncio5/script.js"></script>
</html>
