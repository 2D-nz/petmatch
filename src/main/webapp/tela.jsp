<!DOCTYPE html>
<html lang="pt-br">
 <section>
    <head>
       <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
       <meta name="viewport" content="width=device-width, initial-scale=1.0" />
       <link rel="stylesheet" href="tela.css" />
       <script src="tela.js" defer></script>
       <script src="navscripts.js" defer></script>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <%@ include file="/navBar.jsp"%>
       <title>Petmatch</title>
    </head>
    <body>
       <main>
          <header>
             <h1 class="text1">Perdeu seu pet? <br />Nós te ajudamos a achar!</h1>

             <h3>
                Temos a ferramenta de busca perfeita para encontrar o seu melhor amigo
             </h3>
             <div class="banner">
                <img src="/images/Banner2.png" alt="imagens de cachorros" class="img">
                    <section class="buttons">
                        <button class="btn1">
                            <a href="/lost-all-pets" class="a">
                                <img src="/images/pata.png" class="pet">
                                Procuro um PET
                            </a>
                        </button>
                        <button class="btn2">
                            <a href="/lost-all-pets" class="a">
                                <img src="/images/bsc.png" class="dono">
                                Procuro um DONO
                            </a>
                        </button>
                    </section>
             </div>
          </header>
          <div class="t2">
             <h2 class="t1"> Detalhes sobre os nossos pets encontrados:</h2>
          </div>
          <section class="carousel-section">
             <div class="container-slider">
                <button id="prev-button"> <img src="/images/arrow.png" alt=""></button>
                <div class="imagens">
                   <img src="/images/princess.png" class="slider on">
                   <img src="/images/teste2.jpg" class="slider">
                   <img src="/images/teste3.jpg" class="slider">
                </div>
             </div>
             <div class="container-slider">
                <div class="imagens">
                   <img src="/images/kitty.jpg" class="slider on">
                   <img src="/images/dogRosa.png" class="slider">
                   <img src="/images/dogsAzuis.png" class="slider">
                </div>
             </div>
             <div class="container-slider">
                <div class="imagens">
                   <img src="/images/dogOculis.png" class="slider on">
                   <img src="/images/dogIntel.png" class="slider">
                   <img src="/images/dogNiver.jpg" class="slider">
                </div>
                <button id="next-button"> <img src="/images/arrow.png" alt=""></button>
             </div>
          </section>
          <div class="unit">
             <button class="mais"><a href="/ferramentas-page/index.jsp" class="font1"> Veja Mais </a></button>
           </div>
           <footer>
                <p>Fale conosco <b>(11) 4002-8922</b></p>
                <p>Email: <b> sac@petmatch.com.br </b></p>
            </footer>
       </main>
    </body>
    <script src="script.js"></script>
</html>