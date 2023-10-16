<!DOCTYPE html>
<html lang="pt-br">
<head>  
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../nav.css">
    <title>Document</title>

    <link rel="stylesheet" href="style.css">
</head>

<body>
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

    <div class="container">
        
        <h1 class="heading">       </h1>
        <h1 class="heading">       </h1>

        <input type="text" placeholder="Pesquisar..." id="search-box">

        

        <div class="container-image">
         <div class="image" data-title="Gato">
            <img src="../img/gato-deserto.jpg" alt="">
            <h3>Gato</h3>
            <p></p>
        </div>

        <div class="image" data-title="Cachorro">
            <image src="../img/Caramelo.png" alt="">
            <h3>Caramelo</h3> 
            <p></p>  
        </div>

        <div class="image" data-title="Cachorro2">
            <image src="../img/shitzu.jpg" alt="">
           <h3>Shitzu</h3>
           <p></p>   
       </div>

        <div class="image" data-title="Cachorro3">
            <image src="../img/vira lata.jpg" alt="">
            <h3>Vira-lata</h3>
            <p></p>   
       </div>
    
        <div class="image" data-title="Gato2">
            <image src="../img/gato de rua.jpg" alt="">
            <h3>Gato</h3>
            <p></p>   
       </div>

        <div class="image" data-title="Coelho">
            <image src="../img/coelho.jpg" alt="">
           <h3>Coelho</h3>
           <p></p>     
       </div>
    
        <div class="image" data-title="Cachorro4">
            <image src="../img/chow chow.jpg" alt="">
            <h3>Chow Chow</h3>
            <p></p>     
       </div>
    
        <div class="image" data-title="Gato3">
            <image src="../img/gato-siames.jpg" alt="">
            <h3>Gato Siamês</h3>   
       </div>  

        <div class="image" data-title="Cachorro5">
            <image src="../img/rottweiler.jpg" alt="">
            <h3>Rottweiler</h3>
            <p></p>     
       </div>  

        <div class="image" data-title="Cachorro6">
            <image src="../img/cachorro-velhinho.jpg" alt="">
            <h3>Vira-lata</h3>
            <p></p>     
       </div>

       <div class="image" data-title="Gato4">
            <image src="../img/gato-preto.jpg" alt="">
            <h3>Gato</h3> 
            <p></p>    
        </div>

        <div class="image" data-title="Porco">
            <image src="../img/porco.jpg" alt="">
            <h3>Porquinho</h3>  
            <p></p>   
        </div>
       
    </div>
    </div>

   

</body>
<script src="../navscripts.js"></script>
</html>