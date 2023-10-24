<!DOCTYPE html>
<html lang="pt-br">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../nav.css">
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
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
            <button id="login">Login</button>
        </div>
    </nav>
<div class="container">

    <h1 class="heading">       </h1>
    <h1 class="heading">       </h1>
    

		<input type="text" placeholder="Pesquisar..." id="search-box">

	<table>
        <tr>
            <th>ID</th>
            <th>Especie</th>
            <th>Situacao</th>
            <th>genero</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="pet" items="${pets}">
        <tr>
            <td></td>
            <td>${pet.id}</td>
            <td>${pet.especie}</td>
            <td>${pet.situacao}</td>
            <td>${pet.genero}</td>
            <td>
                <form action="/delete-pet" method="post">
                <input type="hidden" id="id" name="id" value="${pet.id}">
                <button type="submit">Delete</button>
                <span> | </span>
                <a href="telasAnuncio/TelaAnuncio2/index.jsp?id=${pet.id}&especie=${pet.especie}&situacao=${pet.situacao}&genero=${pet.genero}">Prosseguir</a>
                </form>
            </td>
        </tr>
        </c:forEach>
    </table>
<div>
</body>
<script src="../navscripts.js"></script>
</html>