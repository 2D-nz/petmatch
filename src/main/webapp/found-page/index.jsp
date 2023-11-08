<!DOCTYPE html>
<html lang="pt-br">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/searching-page/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>

<body>

      <div class="container">
        <h1 class="heading"></h1>
        <h1 class="heading"></h1>

        <c:forEach var="pet" items="${pets}">
          <div class="container-image">
            <div class="image">
              <a href="/details-pet?id=${pet.id}">Ver detalhes</a>
               <img src="${pet.image}" data-pet-id="${pet.id}">
                <h3>${pet.nome}</h3>
              <p></p>
            </div>
          </div>
        </c:forEach>
      </div>
    </body>
</body>
<script src="../navscripts.js"></script>
</html>
