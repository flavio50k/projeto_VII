let botaoSalvar = document.querySelector("#button-salvar-cad");
let formSalvar = document.querySelector("#form-cadastro");

botaoSalvar.addEventListener("mouseenter", () => {
    formSalvar.removeAttribute("action");
    formSalvar.setAttribute("action", "/ProjetoIntegradorVII/acao?param=cadastroPessoa");
});