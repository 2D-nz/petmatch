<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../nav.css">
    <link rel="stylesheet" href="style.css">
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


        <div class="container-image">
         <div class="image" data-title="Gato">
            <img src="../images/cat-1.jpg" alt="">
            <h3>Gato</h3>
            
        </div>

        <div class="image" data-title="Cachorro">
            <image src="../images/Caramelo.png" alt="">
            <h3>Caramelinho</h3>
        </div>

        <div class="image" data-title="Cachorro2">
            <image src="../images/cat-2.jpg" alt="">
           <h3>Outro gato</h3>
       </div>

       
        <div class="image" data-title="Gato">
           <img src="../images/chow_chow.jpg" alt="">
           <h3>Chow Chow</h3>
           
       </div>

       <div class="image" data-title="Cachorro">
           <image src="../images/gato-deserto.jpg" alt="">
           <h3>Mais um gato</h3>
       </div>

       <div class="image" data-title="Cachorro2">
           <image src="../images/shitzu.jpg" alt="">
          <h3>Shitzu</h3>
      </div>

      
        <div class="image" data-title="Gato">
           <img src="../images/porco.jpg" alt="">
           <h3>Porco</h3>
       </div>

       <div class="image" data-title="Cachorro">
           <image src="../images/gato-siames.jpg" alt="">
           <h3>Gatinho</h3>
       </div>

       <div class="image" data-title="Cachorro2">
           <image src="../images/golden.jpg" alt="">
          <h3>Doguinho</h3>
      </div>

      
        <div class="image" data-title="Gato">
           <img src="../images/rottweiler.jpg" alt="">
           <h3>Dogão</h3>
           
       </div>

       <div class="image" data-title="Cachorro">
           <image src="../images/cachorro-velhinho.jpg" alt="">
           <h3>Idosinho</h3>
       </div>

       <div class="image" data-title="Cachorro2">
           <image src="../images/gato-preto.jpg" alt="">
          <h3>Advinha</h3>
      </div>

    </div>
    </div>



</body>
<script src="../navscripts.js"></script>
</html>