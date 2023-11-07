<!DOCTYPE html>
<html lang="pt-br">
<%@ page contentType="text/html; charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Panda animated login</title>
            <!-- Google Font -->
            <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet" />
            <!-- Stylesheet -->
            <link rel="stylesheet" href="/login-page/style.css" />

        </head>

        <body>

            <header>
                <img src="/images/dog-logo.png" class="logo">
                <p class="title">PetMatch</p>
            </header>
            <div class="info-container">
                <div class="cachorro-img">
                    <img src="/images/cachorro-fundo.png">
                </div>
                <div class="text-register">
                    <h3 class="new-title-register"> Encontre seu companheiro de quatro patas!<br> Registre-se agora
                    </h3>
                    <p class="tagline">
                        Com a sua conta da PetMatch voce consegue cadastrar
                        <br>
                        o amiguinho encontrado :)
                        <br>
                        alem de acompanhar seu historico!
                    </p>
                    <button size="is large" id="LoginCriarConta" class="button-register"
                        onclick="redirecionarParaOutraPagina()">Criar minha conta</button>
                    <div id="social_media">
                        <a href="#">
                            <img src="/images/icon-facebook.png" alt="Logo Facebook" class="face-icon">
                        </a>
                        <a href="#">
                            <img src="/images/icon-google.png" alt="Logo Google" class="google-icon">
                        </a>
                    </div>
                </div>
            </div>
            <c:if test="req.getAttribute('Registrado').equals('true')">
                <dialog open>
                    Você foi registrado!
                </dialog>

            </c:if>
            <div class=" container">

                <form action="/login" method="post">
                    <label for="username">Email:</label>
                    <input type="text" id="username" name="email" placeholder="Email aqui..." />
                    <label for="password">Senha:</label>
                    <input type="password" id="password" name="password" placeholder="Senha aqui..." />
                    <button>Login</button>
                    <span>${requestScope.message}</span>
                </form>
                <div class="ear-l"></div>
                <div class="ear-r"></div>
                <div class="panda-face">
                    <div class="blush-l"></div>
                    <div class="blush-r"></div>
                    <div class="eye-l">
                        <div class="eyeball-l"></div>
                    </div>
                    <div class="eye-r">
                        <div class="eyeball-r"></div>
                    </div>
                    <div class="nose"></div>
                    <div class="mouth"></div>
                </div>
                <div class="hand-l"></div>
                <div class="hand-r"></div>
                <div class="paw-l"></div>
                <div class="paw-r"></div>
            </div>
            </div>
            </div>
            <!-- Script -->
            <script src="/login-page/script.js"></script>
        </body>

</html>