<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Página de anúncio 3</title>
</head>
<body>
    <div class="container">
        <div class="form-image">
            <img src="assets/img/catdog.svg">
        </div>
        <div class="form">
            <form action="#">
                <div class="form-header">
                    <div class="title">
                        <h1>Anúncie seu pet</h1>
                    </div>
                </div>
                <div class="input-group">
                    <div class="input-box">
                        <p>
                            <label for="mes">Data do desaparecimento:</label>
                            <input type="date" name="mes" id="mes" class="date">
                        </p>
                        <label for="description">Endereço:</label>
                        <input id="description"type="text" name="description" class="p1" required>
                        <label for="ite2">Telefone com WhatsApp:</label>
                        <label for="tel">Telefone com WhatsApp:</label>
                        <div class="phone-input">
                            <input type="text" name="tel" id="tel" placeholder="(__) _____-____" required class="p2" maxlength="14" pattern="\(\d{2}\) \d{4}-\d{4}" title="Formato esperado: (99) 9999-9999">
                        </div>
                    </div>
                </div>
                    <div class="login-button">
                    <div class="voltar">
                        <button><a href="#">Voltar</a></button>
                    </div>
                    <div class="prosseguir">
                        <button type="submit"><a href="#">Prosseguir</a></button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>