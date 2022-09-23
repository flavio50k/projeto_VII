<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/1x/outline_perm_identity_white_24dp.png"/>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet"> 
        <link rel="stylesheet" href="./styles/cadastro-usuario.css">
        <title>Cadastro de Usuário - REQ</title>
    </head>
    <body id="body-caduser">
        <a href="paginaInicial.jsp"><img id="voltar" src="img/2x/outline_arrow_back_black_24dp.png"></a>
        <div id="container">
            <h2 id="texto-cadastro">Cadastro de Usuário</h2>
            <form id="form-cadastro">
                <div id="infos">
                    <label for="id-field">ID</label>
                    <input type="number" class="cad-field" id="id-field">
                    <br>
                    <label for="name-field">Nome</label>
                    <input type="text" class="cad-field" id="name-field" required>
                    <br>
                    <label for="surname-field">Sobrenome</label>
                    <input type="text" class="cad-field" id="surname-field" required>
                    <br>
                    <label for="birth-field">Nascimento</label>
                    <input type="date" class="cad-field" id="birth-field" required>
                    <br>
                    <label for="cpf-field">CPF</label>
                    <input type="text" class="cad-field" id="cpf-field" placeholder="Somente números" required>
                    <br>
                    <label for="email-field">E-mail</label>
                    <input type="email" class="cad-field" id="email-field" placeholder="joao@email.com" required>
                    <br>
                    <label for="tel-field">Telefone</label>
                    <input type="tel" class="cad-field" id="tel-field" placeholder="Somente números" required>
                    <br>
                    <label for="user-field">Usuário</label>
                    <input type="text" class="cad-field" id="user-field" required>
                    <br>
                    <label for="pass-field">Senha</label>
                    <input type="passoword" class="cad-field" id="pass-field" required>
                    <br>
                    <label for="confpass-field">Confirmar Senha</label>
                    <input type="passoword" class="cad-field" id="confpass-field" required>
                    <br>
                    <label for="permissions">Permissão</label>
                    <select id="permissions" name="permissions">
                        <option value="admin">Administrador</option>
                        <option value="user">Usuário</option>
                    </select>
                    <label for="situacao">Situação</label>
                    <select id="situacao" name="situacao">
                        <option value="ativo">Ativo</option>
                        <option value="inativo">Inativo</option>
                        <option value="bloqueado">Bloqueado</option>
                    </select>
                </div>
                <div id="localizacao">
                    <label for="estado">Estado</label>
                    <select id="estado" name="estado">
                        <option value="rr">RS</option>
                        <option value="sc">SC</option>
                    </select>
                    <label for="cidade">Cidade</label>
                    <select id="cidade">
                        <option value="cidade1">Estrela</option>
                        <option value="cidade2">Lajeado</option>
                    </select>
                    <label for="pais">País</label>
                    <select id="pais">
                        <option value="pais1">Brasil</option>
                        <option value="pais1">Uruguai</option>
                    </select>
                </div>
                <div id="acoes">
                    <input type="submit" value="Salvar" id="button-salvar-cad">
                    <input type="submit" value="Consultar" id="button-consultar-cad">
                    <input type="submit" value="Excluir" id="button-excluir-cad">
                    <input type="reset" value="Limpar" id="button-limpar">
                </div>
            </form>
        </div>
        <script src="js/validaCamposCadastroUsuario.js"></script>
    </body>
</html>
