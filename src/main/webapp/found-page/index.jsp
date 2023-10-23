<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../nav.css" />
    <title>Pets Encontrados</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="style.css" />
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
      <h1 class="heading"></h1>
      <h1 class="heading"></h1>

      <c:forEach var="pet" items="${pets}">
        <div class="container-image">
          <div class="image" data-title="Gato">
            <img src="${pet.image}" alt="${pet.name} Image" />
            <h3>${pet.name}</h3>
            <p></p>
          </div>
        </div>
      </c:forEach>
    </div>
  </body>

  <script src="../navscripts.js"></script>
</html>
