<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Página de anúncio 4</title>
</head>
<body>
    <div class="container">
        <div class="form-image">
            <img src="assets/img/catdog.svg">
        </div>
        <div class="form">
                <div class="form-header">
                    <div class="title">
                        <h1>Anuncie seu pet</h1>
                    </div>
                    <div class="p">
                        <p>Crie com amor o seu anúncio para acessar o Painel de Busca dos fofinhos, onde você terá acesso a incríveis ferramentinhas para encontrar seus amiguinhos peludos.</p>
                    </div>
                </div>
            <form action="/create-pet" method="post" enctype="multipart/form-data">
                <div class="upload">
                        <label for="image">Selecione uma imagem:</label>
                        <input type="file" id="image" name="image" accept="image/*" required>
                        <input class="sent"  type="submit" value="Enviar Imagem">
                </div>
                <div class="login-button">
                    <button><a href="#">Voltar</a></button>
                    <button type="submit" onclick="prosseguirParaProximaTela()"><a href="#">Prosseguir</a></button>
                </div>
            </form>
        </div>
    </div>
</body>
<script src="./../script.js"></script>
</html>
