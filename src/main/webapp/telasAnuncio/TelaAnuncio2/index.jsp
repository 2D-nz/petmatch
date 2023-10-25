<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Página de anúncio 2</title>
</head>
<body>
    <div class="container">
        <div class="form-image">
            <img src="assets/img/catdog.svg">
        </div>
        <div class="form">
            <div class="form-header">
                <div class="title">
                    <h1>Anúncie seu pet</h1>
                </div>
                <div class="p">
                    <p>Crie com amor o seu anúncio para acessar o Painel de Busca dos fofinhos, onde você terá acesso a incríveis ferramentinhas para encontrar seus amiguinhos peludos.</p>
                </div>
            </div>
            <form action="/create-pet" method="post">
                <input type="hidden" id="id" name="id" value="${param.id}">
                <div class="input-box">
                    <label for="firstname">Nome:</label>
                    <input class="nome" id="nome" type="text" name="nome" placeholder="Digite o nome do seu pet" required>
                </div>
                <div class="input-group">
                    <label for="raca">Raça:</label>
                    <select id="raca" name="raca">
                        <option value="Labrador Retriever">Labrador Retriever</option>
                        <option value="Golden Retriever">Golden Retriever</option>
                        <option value="German Shepher">German Shepher</option>
                        <option value="Bulldog Inglês">Bulldog Inglês</option>
                        <option value="Poodle">Poodle</option>
                        <option value="Beagle">Beagle</option>
                        <option value="Rottweiler">Rottweiler</option>
                        <option value="Terrier">Terrier </option>
                        <option value="Dachshund">Dachshund</option>
                        <option value="Boxer">Boxer</option>
                        <option value="Siamês">Siamês</option>
                        <option value="Persa">Persa</option>
                        <option value="Maine">Maine Coon</option>
                        <option value="Ragdoll">Ragdoll</option>
                        <option value="Bengal">Bengal</option>
                        <option value="Sphynx">Sphynx</option>
                        <option value="British Shorthair">British Shorthair</option>
                        <option value="Abissínio">Abissínio</option>
                        <option value="Scottish Fold">Scottish Fold</option>
                        <option value="Birmanês">Birmanês</option>
                        <option value="SRD">SRD</option>
                        <option value="Outros">Outros</option>
                    </select>

                    <label for="cor">Cor:</label>
                    <select id="cor" name="cor">
                        <option value="Preto">Preto</option>
                        <option value="Branco">Branco</option>
                        <option value="Caramelo">Caramelo</option>
                        <option value="Amarelo">Amarelo</option>
                        <option value="Creme">Creme</option>
                        <option value="Chocolate">Chocolate</option>
                        <option value="Ruivo">Ruivo</option>
                        <option value="Azul">Azul</option>
                        <option value="Cinza">Cinza</option>
                        <option value="Fulvo">Fulvo</option>
                        <option value="Merle">Merle</option>
                        <option value="Listrado">Listrado</option>
                        <option value="Manchado">Manchado</option>
                    </select>

                    <label for="cordosolhos">Cor dos olhos:</label>
                    <select id="cordosolhos" name="cordosolhos">
                        <option value="Azul">Azul</option>
                        <option value="Preto">Preto</option>
                        <option value="Verde">Verde</option>
                        <option value="Castanho Claro">Castanho Claro</option>
                        <option value="Castanho Escuro">Castanho Escuro</option>
                        <option value="Cinza">Cinza</option>
                        <option value="Amarelo">Amarelo</option>
                    </select>
                </div>
                <div class="login-button">
                    <div class="voltar">
                        <button><a href="#">Voltar</a></button>
                    </div>
                    <div class="prosseguir">
                            <input type="hidden" name="page" value="3">
                            <button type="submit">Prosseguir</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
<script src="./../script.js"></script>
</html>
