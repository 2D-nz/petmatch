<!DOCTYPE html>
<html lang="pt-br">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ferramentas</title>
    <link rel="stylesheet" href="styles.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="../nav.css">

    <script src="script.js"></script>
</head>
<body>
   
    <div class="dog_img">
        <img src="../images/Banner_Cachorro.jpg" style="float: top" class="banner-image">
        <p> Quais ferramentas posso usar? </p>
    </div>
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
    <div class="elementor-widget-container">
        <style>
        .elementor-widget-text-editor.elementor-drop-cap-view-stacked .elementor-drop-cap{background-color:#69727d;color:#fff}.elementor-widget-text-editor.elementor-drop-cap-view-framed .elementor-drop-cap{color:#69727d;border:3px solid;background-color:transparent}.elementor-widget-text-editor:not(.elementor-drop-cap-view-default) .elementor-drop-cap{margin-top:8px}.elementor-widget-text-editor:not(.elementor-drop-cap-view-default) .elementor-drop-cap-letter{width:1em;height:1em}.elementor-widget-text-editor .elementor-drop-cap{float:left;text-align:center;line-height:1;font-size:50px}.elementor-widget-text-editor .elementor-drop-cap-letter{display:inline-block}</style>				Aqui<strong> você consegue ver</strong> sobre <span style="color: #f29100;"><strong>as ferramentas</strong></span> que temos para achar seu animalzinho						</div>
        </div>
<div class ="all-cards">
    <div class="container">
            <div class="cachorro-perdido">
                <img src="../images/Perdido.png">
            </div>
            <div class="text-test">
                <div class="header-card2">
                    <h2>Anuncie seu <span style="color:#F29100">PET</h2>
                    <p>Crie seu anúncio gratuitamente para adicionar seu pet aos Achados e Perdidos! Ao criar o anúncio, você terá acesso ao Painel de Busca, com todas as ferramentas para ajudar você na busca.
                    </p>   
                </div>
                <button class="toggle-button" onclick="toggleText(1)">Como Funciona ?</button>
                <div class="hidden-text" id="hiddenText1">
                    <p>Basta criar o anúncio para adicionar seu pet na seção de achados e perdidos de pets, acessado por milhares de pessoas por dia. Nos postamos seu anúncio automaticamente na nossa página do Facebook no mesmo momento. Também enviamos emails diários para nossa rede de busca colaborativa em sua região divulgando seu pet.</p>
                </div>
            </div>
    </div>
    <div class="container">
        <ul>
            <div class="header-card2">
                <h2>Busque pelas <span style="color:#F29100">Caracteristicas</h2>
                <p style="font-size: 16px;">Você consegue o seu animalzinho pelas caracteristicas que ele contém</p>
            </div>
            <li class="list-item1">
                <img src="../images/pata-de-animal.png" alt="pata" width="30px">
                <span class="List-text">Raça Golden</span>
            </li>
            <li class="list-item2">
                <img src="../images/pata-de-animal.png" alt="pata" width="30px">
                <span class="List-text">Coleira</span>
            </li>   
            <li class="list-item3">
                <img src="../images/pata-de-animal.png" alt="pata" width="30px">
                <span class="List-text">Dócio</span>
            </li>      
            <li class="list-item4">
                <img src="../images/pata-de-animal.png" alt="pata" width="30px">
                <span class="List-text">Travesso</span>
            </li>   
            <li class="list-item5">
                <img src="../images/pata-de-animal.png" alt="pata" width="30px">
                <span class="List-text">Mancha na pata esquerda</span>
            </li>   
        </ul>
        <div class="cachorro-img">
            <img src="../images/golden.jpg">
        </div>
    </div>
</body>
<script src="../navscripts.js"></script>
</html>
