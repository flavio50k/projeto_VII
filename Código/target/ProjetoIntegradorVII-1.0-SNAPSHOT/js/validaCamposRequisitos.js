let button = document.querySelector("#button-salvar-cad");

button.addEventListener("click", () => {
   let titulo = document.querySelector("#title-field").value.length;
   let descricao = document.querySelector("#desc-field").value.length; 
   let codigo = document.querySelector("#cod-field").value.length;
   let complexidade = document.querySelector("#comp-field").value.length; 
   
   if (titulo === 0 && descricao === 0 && codigo === 0 && complexidade === 0) {
       alert("Nenhum campo pode estar vazio");
   }
});