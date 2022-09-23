let botaoExcluir = document.querySelector("#button-excluir-cad");
let formExcluir = document.querySelector("#form-cadastro");

botaoExcluir.addEventListener("mouseenter", () => {
    formExcluir.removeAttribute("action");
    formExcluir.setAttribute("action", "/ProjetoIntegradorVII/acao?param=excluirPessoa");
});