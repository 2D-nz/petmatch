<!DOCTYPE html>
<html lang="pt-br">
<section>

    <head>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

            <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
                <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <link rel="stylesheet" href="nav.css" />

                <style>
                    /* Estilos da barra de navegação */
                    .topnav {
                        height: 60px !important;
                        display: flex;
                        justify-content: space-between;
                        align-items: center;
                        padding: 0 1rem;
                        background-color: #337F9C !important;
                        color: white;
                        width: 100%;
                        position: fixed;
                        top: 0;
                        left: 0;
                    }

                    .topnav>div {
                        align-items: center;
                        margin: 0 2.5rem;
                        display: flex;
                        justify-content: space-between;
                        height: 100%;
                    }

                    .topnav>div>a {
                        text-decoration: none;
                        color: #fff;
                        margin-right: 20px;
                    }

                    .topnav>div>button {
                        height: 100%;
                        border-radius: 0;
                        transition: all ease-in 0.1s;
                        border: 0;
                        color: #fff;
                        background-color: #337F9C !important;
                    }

                    .topnav>div>button:hover {
                        background-color: #D9E4DD !important;
                        box-shadow: 5px 7px 10px 1px #000000;
                    }

                    a {
                        all: unset;
                        cursor: pointer;
                    }
                    .dropdown {
                      position: relative;
                      display: inline-block;
                    }
                    .dropbtn {
                      background-color: #337F9C;
                      color: white;
                      padding: 10px 15px;
                      font-size: 16px;
                      border: none;
                      cursor: pointer;
                    }

                    .dropdown-content {
                      display: none;
                      position: absolute;
                      background-color: #f9f9f9;
                      min-width: 160px;
                      box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
                      z-index: 1;
                    }

                    .dropdown-content a {
                      color: black;
                      padding: 12px 16px;
                      text-decoration: none;
                      display: block;
                    }

                    .dropdown-content a:hover {
                      background-color: #D9E4DD;
                    }

                    .dropdown:hover .dropdown-content {
                      display: block;
                    }
                    .DialogCont{
                      border-radius: 10px !important ;
                      background-color: #337F9C !important;
                      color: #ffffff !important;
                      margin: auto !important;
                      padding: 2em !important;
                  }

                  .buttonDialog{
                   border-radius: 5px;
                   color: #ffffff;
                   background-color: #385a20;
                   margin:0em !important;
                   height: 30px;
                   width: 40px;
                   margin-top: 10px !important;
                  }
                </style>
    </head>

    <body>
        <nav class="topnav">
            <div class="logo">
                <a href="/tela.jsp">
                    <img class="logo" style="width: 110px !important; height: auto !important; margin-top: 10px;"
                        src="/images/dog-logo.png" />
                </a>
                <h1>Petmatch</h1>
            </div>
            <div class="options">
                <a href="/found-all-pets" class="a">Procurando Tutor</a>
                <a href="/lost-all-pets" class="a">Perdido</a>
                <a href="/ferramentas-page/index.jsp" class="a">Ferramentas</a>
                <a id="anuncieLink" href="/telasAnuncio/TelaAnuncio1/index.jsp" class="a"> Anuncie </a>
                <c:if test="${sessionScope.loggedUser != null}">
                    <div class="dropdown">
                        <a href="#" class="dropbtn">${loggedUser.nome}</a>
                        <div class="dropdown-content">
                            <a href="/pets-by-user">Meus Pets</a>
                            <a href="/edit_profile-page/index.jsp">Editar Perfil</a>
                            <a href="/logout">Deslogar</a>
                        </div>
                    </div>
                </c:if>
                <c:if test="${sessionScope.loggedUser == null}">

                    <a href="/login-page/login.jsp" class="a">Login</a>
                </c:if>

            </div>
        </nav>

    <dialog id="loginDialog" class="DialogCont">
                <p>Você precisa estar cadastrado para anunciar. Deseja fazer login agora?</p>
                <button class="buttonDialog" id="loginDialogYes">Sim</button>
                <button class="buttonDialog" id="loginDialogNo">Não</button>
        </dialog>

    <script src="navscripts.js" defer></script>
   <script>
        document.addEventListener("DOMContentLoaded", function () {
            var anuncieLink = document.getElementById("anuncieLink");
            var loginDialog = document.getElementById("loginDialog");
            var loginDialogYes = document.getElementById("loginDialogYes");
            var loginDialogNo = document.getElementById("loginDialogNo");

            anuncieLink.addEventListener("click", function (event) {
                //usuário não está logado
                var isUserNotLogged = <c:out value="${sessionScope.loggedUser == null}" />;
                if (isUserNotLogged) {
                    event.preventDefault();
                    loginDialog.showModal();
                }
            });

            loginDialogYes.addEventListener("click", function () {
                window.location.href = "/login-page/login.jsp";
            });

            loginDialogNo.addEventListener("click", function () {
                loginDialog.close();
            });
        });
    </script>
    </body>
</html>