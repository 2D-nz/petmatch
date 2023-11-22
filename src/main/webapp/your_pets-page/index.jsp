<!DOCTYPE html>
<html lang="pt-br">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  <head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
      <%@ include file="/navBar.jsp" %>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="../nav.css">
        <link rel="stylesheet" href="/your_pets-page/style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  </head>


  <body>
    <%@ include file="/navBar.jsp" %>


      <div class="container">


        <h1 class="heading"></h1>
        <h1 class="heading"></h1>


        <c:forEach var="pet" items="${pets}">
          <a href="/details-pet?id=${pet.id}">

            <div class="container-pet">

              <div class="container-image">


                <div class="image">
                  <img src="${pet.image}">
                </div>

              </div>

              <h3>${pet.nome}</h3>
          </a>

          <div class="buttons">

            <button class="btt">

              <a href="/edit_pet/index.jsp?id=${pet.id}" class="edit-button">Editar</a>
            </button>

            <form action="/delete-pet" method="post" class="btt">
              <input type="hidden" id="id" name="id" value="${pet.id}">
              <button type="submit">Delete</button>
              <a href="/edit_pet/index.jsp?id=${pet.id}">
            </form>
          </div>

      </div>
      </c:forEach>

      </div>


  </body>
  </body>
  <script src="../navscripts.js"></script>

</html>