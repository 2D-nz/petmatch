<!DOCTYPE html>
<html lang="pt-br">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ferramentas</title>
        <link rel="stylesheet" href="styles.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <link rel="stylesheet" href="../nav.css">
        <%@ include file="/navBar.jsp" %>


            <script src="script.js"></script>
</head>

<body>
    <header>

        <h1>Ferramentas</h1>
        <h3>Como utilizar nosso site para ajudar um pet a voltar para casa?</h3>


    </header>
    <section class="perdidos">


        <img src="../images/Perdido.png" class="poster" />
        <div>

            <h2>Se você perdeu seu pet... <img class="icon" src="../images/sadog.png" /></h2>


            <h1><a href="#">Anuncie</a> seu pet! </h1>
            <p>Aqui você consegue criar um anúncio com seu pet </p>
            <p>Nossos anúncios incluem mapa de localização, dados para contato com o Dono, e um gerador de panfletos,
                tudo
                para facilitar alguém encontrar o seu pet e entrar em contato com você o mais rápido possível</p>

        </div>
    </section>


    <section class="encontrados">
        <div>

            <h2>Se você encontrou um pet... <img class="icon" src="../images/foundog.png" alt=""></h2>
            <h1>vá em <a href="#"> Encontrados</a> </h1>
            <p>Na seção de Pets encontrados, nós temos todos os Pets que foram registrados em nosso site, e também como
                procurar o anuncio desse pet para que você consiga notificar o dono </p>
        </div>

        <img src="../images/pet house.png" class="poster" alt="">



    </section>


</body>

</html>