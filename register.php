<?php
require("./header.php");
?>

<div class="container">

  <div id="reg-page" class="row">
    <div class="col s12 z-depth-4 card-panel opacity">

        <div class="row">
          <div class="input-field col s12 center">
            <h4>Nouveau client ?</h4>
            <p>Créez votre compte gratuit.</p>
          </div>
        </div>

      <div class="divider grey darken-3"></div>
    
      <div class="container">

      <form class="reg-form" id="reg-form" action="regverif.php" method="POST">
    
        <div class="row">
          <div class="input-field col s6">
            <input id="surname" name="surname" type="text" class="validate" required="" aria-required="true">
            <label for="surname">Nom</label>
          </div>

          <div class="input-field col s6">
            <input id="name" name="name" type="text" class="validate" required="" aria-required="true">
            <label for="name">Prénom</label>
          </div>
        </div>

        <div class="row">
          <div class="input-field col s12">
            <input id="email" name="email" type="email" class="validate" required="" aria-required="true">
            <label for="email">Adresse mail</label>
          </div>
        </div>

        <div class="row">
          <div class="input-field col s12">
            <input id="password" name="password" type="password" class="validate" required="" aria-required="true">
            <label for="password">Mot de passe</label>
          </div>
        </div>

        <div class="row margin">
          <div class="input-field col s12">
            <input id="password-again" name="password-again" type="password" class="validate" required aria-required="true">
            <label for="password-again">Vérification du mot de passe</label>
          </div>
        </div>

        <div class="row">
          <label for="form-check">
          <input type="checkbox" id="form-check" name="CustomCheck1" required="" aria-required="true"><span>J'accepte les <a href="#">Conditions d'utilisation</a></span></label>
        </div>

        <div class="row">
          <div class="input-field col s12">
            <button type="submit" name="submit" class="submit btn waves-effect waves-light col s12">S'enregistrer</button>
          </div>

          <div class="input-field col s12">
            <p class="margin center medium-small sign-up">Déjà enregistré ? <a href="./login.php">Identifiez-vous.</a></p>
          </div>
        </div>

      </form>

    </div>
  </div>
  </div>
</div>


<script src="js/reg.js"></script>

<?php
require("./footer.php");
?>