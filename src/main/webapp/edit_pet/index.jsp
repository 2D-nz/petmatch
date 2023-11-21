<!DOCTYPE html>
<html lang="pt-br">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Formulário</title>
</head>

<body>
    <div class="container">
    <div class="form-image">
        <img src="assets/img//undraw_shopping_re_3wst.svg" alt="">
    </div>
    <form action="/update-pet" method="post" enctype="multipart/form-data">
    <input type="hidden" id="id" name="id" value="${param.id}">

        <div class="form">
                <div class="form-header">
                    <div class="title">
                        <h1>Atualize seu Pet</h1>
                    </div>
                </div>

                <div class="input-box">
                    <label for="nome">Nome:</label>
                    <input type="nome" name="nome" id="nome">
                </div>


                <div class="upload">
                        <label for="image">Selecione uma imagem:</label>
                        <input type="file" id="image" name="image" accept="image/*" required>
                </div>

                <div class="input-group">
                    <div class="input-box">
                        <label for="situacao">Situação:</label>
                        <select id="situacao" name="situacao" value="${param.situacao}">
                            <option value="Perdido">Perdido</option>
                            <option value="Procurando tutor">Procurando tutor</option>
                        </select>
                    </div>

                    <div class="input-box">
                        <label for="especie">Espécie:</label>
                         <select id="especie" name="especie" value="${param.especie}">
                            <option value="Cachorro">Cachorro</option>
                            <option value="Gato">Gato</option>
                         </select>
                    </div>
                    <div class="input-box">
                        <label for="genero">Gênero:</label>
                        <select id="genero" name="genero" value="${param.genero}">
                            <option value="Macho">Macho</option>
                            <option value="Fêmea">Fêmea</option>
                        </select>
                    </div>

                    <div class="input-box">
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
                    </div>

                    <div class="input-box">
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
                    </div>


                    <div class="input-box">
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


                    <div class="input-box">
                        <label for="mensagem" style="height: 180px;">Mensagem do Tutor:</label>
                        <textarea name="mensagem" id="mensagem" cols="30" rows="10" style="height: 120px;" class="placeBaixo" placeholder="Deixe sua Mensagem" required></textarea>
                    </div>

                    <div class="input-box">
                        <label for="descricao" style="height: 180px;">Descrição:</label>
                        <textarea name="descricao" id="msg2" cols="30" rows="10" style="height: 120px;" class="placeBaixo" placeholder="Deixe sua Mensagem" required></textarea>
                    </div>

                    <div class="input-box">
                        <p>
                            <label for="mes">Data do desaparecimento:</label>
                            <input type="date" name="data" id="data" class="date">
                        </p>
                    </div>

                    <div class="input-box">
                        <label for="tel">Telefone com WhatsApp:</label>
                        <input type="text" name="telefone" id="telefone" title="Formato esperado: (99) 9999-9999">
                    </div>
                </div>

                <div class="continue-button">
                    <button type="submit">Atualizar</button>
                </div>
    </form>
        </div>
    </div>
</body>

</html>