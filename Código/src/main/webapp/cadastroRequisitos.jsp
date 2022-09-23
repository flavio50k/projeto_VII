<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/1x/outline_list_alt_white_24dp.png"/>        
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet"> 
        <link rel="stylesheet" href="./styles/cadastro-requisito.css">
        <title>Cadastro de Requisitos - REQ</title>
    </head>
    <body id="body-cadreq">
        <a href="paginaInicial.jsp"><img id="voltar" src="img/2x/outline_arrow_back_black_24dp.png"></a>
        <div id="container">
            <h2 id="texto-cadastro">Cadastro de Requisitos</h2>
            <form id="form-requisito">
                <label for="id-field">ID</label>
                <input type="number" class="cad-field" id="id-field" required>
                <br>
                <label for="cod-field">Código</label>
                <input type="number" class="cad-field" id="cod-field" placeholder="001" required>
                <br>
                <label for="cod-field">Complexidade</label>
                <input type="number" class="cad-field" id="comp-field" placeholder="De 1 a 5" required>
                <br>
                <div id="prioridade">
                  <p>Prioridade</p>
                  <input type="radio" id="pri-essencial" name="pri-radio" value="essencial"
                         checked>
                  <label for="pri-essencial">Essencial</label>
                  <input type="radio" id="pri-importante" name="pri-radio" value="importante"
                         checked>
                  <label for="pri-importante">Importante</label>
                  <input type="radio" id="pri-desejavel" name="pri-radio" value="desejavel"
                         checked>
                  <label for="pri-desejavel">Desejável</label>
                </div>   
                <br>
                <div>
                    <p>Tipo:</p>
                    <input type="radio" id="tipo-rf" name="tipo-radio" value="funcional"
                           checked>
                    <label for="tipo-rf">Requisito Funcional</label>
                    <input type="radio" id="tipo-rnf" name="tipo-radio" value="nao-funcional"
                           checked>
                    <label for="tipo-rnf">Requisito Não Funcional</label>
                </div>
                <br>
                <label for="title-field">Título</label>
                <br>
                <input type="text" class="cad-field" id="title-field" required>
                <br>
                <label for="desc-field">Descrição</label>
                <br>
                <textarea class="cad-field" id="desc-field" rows="5" cols="30" required></textarea>
                <br>
                <div id="acoes">
                    <input type="submit" value="Salvar" id="button-salvar-cad">
                    <input type="submit" value="Consultar" id="button-consultar-cad">
                    <input type="submit" value="Excluir" id="button-excluir-cad">
                    <input type="reset" value="Limpar" id="button-limpar">
                </div>
            </form>
        </div>
        <script src="js/validaCamposRequisitos.js"></script>
    </body>
</html>
