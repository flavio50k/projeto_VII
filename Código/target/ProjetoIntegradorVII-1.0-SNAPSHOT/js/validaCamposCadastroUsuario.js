let buttonSave = document.querySelector("#button-salvar-cad");

buttonSave.addEventListener("click", () => {
    let nameField = document.querySelector("#name-field");
    let surenameField = document.querySelector("#surename-field");
    let birthField = document.querySelector("#birth-field");
    let cpfField = document.querySelector("#cpf-field").value;
    let emailField = document.querySelector("#email-field");
    let telField = document.querySelector("#tel-field").value;
    let userField = document.querySelector("#user-field");
    let passField = document.querySelector("#pass-field");
    let confPassField = document.querySelector("#confpass-field").value;
   
    if (
            nameField == null && 
            surenameField == null &&
            birthField == null &&
            cpfField.length !== 11 &&
            emailField == null &&
            telField !== 11 &&
            userField == null && 
            passField == null &&
            confPassField != passField
        ) {
        alert("Nenhum campo pode estar vazio");
    }
});