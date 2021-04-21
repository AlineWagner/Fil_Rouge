
var regForm = document.getElementById("reg-form");


regForm.addEventListener("submit", function (event){


var surname = document.getElementById("surname");
var surnameValid = new RegExp("^[a-zA-ZéêèëàîïçÉÊÈËÀÎÏÇ]+([-'\s][a-zA-ZéêèëàîïçÉÊÈËÀÎÏÇ]+)?$");
var surnameRes = surnameValid.test(surname.value);
var surnameErr = document.getElementById("surnameError");

var name = document.getElementById("name");
var nameValid = new RegExp("^[a-zA-ZéêèëàîïçÉÊÈËÀÎÏÇ]+([-'\s][a-zA-ZéêèëàîïçÉÊÈËÀÎÏÇ]+)?$");
var nameRes = nameValid.test(name.value);
var nameErr = document.getElementById("nameError");

var email = document.getElementById("email");
var emailValid = new RegExp("^[a-zA-Z0-9]+([-\_\.a-zA-Z0-9]*)?@[a-zA-Z0-9]+.[a-zA-Z]{2,3}$");
var emailRes = emailValid.test(email.value);
var emailErr = document.getElementById("emailError");

var check = document.getElementById("customcheck1");
var checkErr = document.getElementById("checkError");



    //Nom ------>
    if (empty(surname)) {
        surnameErr.textContent = "Veuillez entrer un nom valide.";
        event.preventDefault();


    }
    if (surnameRes == false)
    {
        event.preventDefault();
        surnameErr.textContent = "Veuillez entrer un nom valide.";
        surnameErr.style.color = "red";

    }
    else
    {
        surnameErr.textContent = "";

    }

    //Prénom ------>
    if (nameRes == false)
    {
        event.preventDefault();
        nameErr.textContent = "Veuillez entrer un prénom valide.";
        nameErr.style.color = "red";
    }
    else
    {
        nameErr.textContent = "";
    }

    //email ------>
    if (emailRes == false)
    {
        event.preventDefault();
        emailErr.textContent = "Veuillez entrer un email valide.";
        emailErr.style.color = "red";
    }
    else
    {
        email.textContent = "";

    }

    // Mot de passe ------>

    //.

    // Mot de passe vérif ------>

    //.

    //checkbox ------>
    if (!check.checked)
    {
        checkErr.textContent = "Veuillez accepter le traitement informatique de ce formulaire.";
        checkErr.style.color = "red";
    }
    else
    {
        checkErr.textContent = "";
    }
})