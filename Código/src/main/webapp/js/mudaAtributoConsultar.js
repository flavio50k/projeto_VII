let botaoConsultar = document.querySelector("#button-consultar-cad");
let formConsultar = document.querySelector("#form-cadastro");

botaoConsultar.addEventListener("mouseenter", () => {
    formConsultar.removeAttribute("action");
    formConsultar.setAttribute("action", "/ProjetoIntegradorVII/acao?param=consultarPessoa");
});