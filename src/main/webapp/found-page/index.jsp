<!DOCTYPE html>
<html lang="pt-br">
<head>  
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../nav.css">
    <title>Pets Encontrados</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
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

        <div class="container-image">
         <div class="image" data-title="Gato">
            <img src="../images/gato-deserto.jpg" alt="">
            <h3>Gato</h3>
            <p></p>
        </div>

        <div class="image" data-title="Cachorro">
            <image src="../images/Caramelo.png" alt="">
            <h3>Caramelo</h3> 
            <p></p>  
        </div>

        <div class="image" data-title="Cachorro2">
            <image src="../images/shitzu.jpg" alt="">
           <h3>Shitzu</h3>
           <p></p>   
       </div>

        <div class="image" data-title="Cachorro3">
            <image src="../images/vira lata.jpg" alt="">
            <h3>Vira-lata</h3>
            <p></p>   
       </div>
    
        <div class="image" data-title="Gato2">
            <image src="../images/gato_de_rua.jpg" alt="">
            <h3>Gato</h3>
            <p></p>   
       </div>

        <div class="image" data-title="Coelho">
            <image src="../images/coelho.jpg" alt="">
           <h3>Coelho</h3>
           <p></p>     
       </div>
    
        <div class="image" data-title="Cachorro4">
            <image src="../images/chow_chow.jpg" alt="">
            <h3>Chow Chow</h3>
            <p></p>     
       </div>
    
        <div class="image" data-title="Gato3">
            <image src="../images/gato-siames.jpg" alt="">
            <h3>Gato Siamês</h3>   
       </div>  

        <div class="image" data-title="Cachorro5">
            <image src="../images/rottweiler.jpg" alt="">
            <h3>Rottweiler</h3>
            <p></p>     
       </div>  

        <div class="image" data-title="Cachorro6">
            <image src="../images/cachorro-velhinho.jpg" alt="">
            <h3>Vira-lata</h3>
            <p></p>     
       </div>

       <div class="image" data-title="Gato4">
            <image src="../images/gato-preto.jpg" alt="">
            <h3>Gato</h3> 
            <p></p>    
        </div>

        <div class="image" data-title="Porco">
            <image src="../images/porco.jpg" alt="">
            <h3>Porquinho</h3>  
            <p></p>   
        </div>
       
    </div>
    </div>

   

</body>
<script src="../navscripts.js"></script>
</html>