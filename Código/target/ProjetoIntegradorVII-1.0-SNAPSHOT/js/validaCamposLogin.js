let button = document.querySelector("#button-login");

button.addEventListener("click", () => {
    let userField = document.querySelector("#user-field").value.length;
    let passField = document.querySelector("#pass-field").value.length;
   
    if (userField === 0 && passField === 0) {
        alert("Campos Usuário e Senha estão vazios");
    }
});