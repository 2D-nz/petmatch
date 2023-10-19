<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Página de anúncio 2 </title>
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
                    <div class="p">
                        <p>Crie com amor o seu anúncio para acessar o Painel de Busca dos fofinhos, onde você terá acesso a incríveis ferramentinhas para encontrar seus amiguinhos peludos.</p>
                    </div>
                    </div>
                </div>
                <div class="input-box">
                    <label for="firstname">Nome:</label>
                    <input class="name" id="firstname" type="text" name="firstname"  placeholder="Digite o nome do seu pet" required>
                </div>
                <div class="input-group">
                    <label for="cct">Raça:</label>
                    <select id="caracteres2" name="caracteres2">
                        <option value="cct2">Labrador Retriever</option>
                        <option value="cct2">Golden Retriever</option>
                        <option value="cct2">German Shepher</option>
                        <option value="cct2">Bulldog Inglês</option>
                        <option value="cct2">Poodle</option>
                        <option value="cct2">Beagle</option>
                        <option value="cct2">Rottweiler</option>
                        <option value="cct2">Terrier </option>
                        <option value="cct2">Dachshund</option>
                        <option value="cct2">Boxer</option>
                        <option value="cct2">Siamês</option>
                        <option value="cct2">Persa</option>
                        <option value="cct2">Maine Coon</option>
                        <option value="cct2">Ragdoll</option>
                        <option value="cct2">Bengal</option>
                        <option value="cct2">Sphynx</option>
                        <option value="cct2">British Shorthair</option>
                        <option value="cct2">Abissínio</option>
                        <option value="cct2">Scottish Fold</option>
                        <option value="cct2">Birmanês</option>
                        <option value="cct2">SRD</option>
                        <option value="cct2">Outros</option>
                    </select>

                    <label for="cct1">Cor</label>
                        <select id="caracteres" name="Caracteres">
                            <option value="cct1">Preto</option>
                            <option value="cct1">Branco</option>
                            <option value="cct1">Caramelo</option>
                            <option value="cct1">Amarelo</option>
                            <option value="cct1">Creme</option>
                            <option value="cct1">Chocolate</option>
                            <option value="cct1">Ruivo</option>
                            <option value="cct1">Azul</option>
                            <option value="cct1">Cinza</option>
                            <option value="cct1">Fulvo</option>
                            <option value="cct1">Merle</option>
                            <option value="cct1">Listrado</option>
                            <option value="cct1">Manchado</option>

                        </select>

                    <label for="cct2">Cor dos olhos:</label>
                        <select id="caracteres3" name="caracteres2">
                            <option value="cct2">Azul</option>
                            <option value="cct2">Preto</option>
                            <option value="cct2">Verde</option>
                            <option value="cct2">Castanho Claro</option>
                            <option value="cct2">Castanho Escuro</option>
                            <option value="cct2">Cinza</option>
                            <option value="cct2">Amarelo</option>
                        </select>
                </div>
                    <div class="login-button">
                    <div class="voltar">
                        <button><a href="#">Voltar</a></button>
                    </div>
                    <div class="prosseguir">
                        <button type="submit" onclick="prosseguirParaProximaTela()"><a href="#">Prosseguir</a></button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
<script src="./../script.js"></script>
</html>