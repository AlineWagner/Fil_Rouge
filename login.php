<?php
require("./header.php");
?>

<div class="container">

  <div id="reg-page" class="row">
    <div class="col s12 z-depth-4 card-panel opacity">
      <form class="log-form">

        <div class="row">
          <div class="input-field col s12 center">
            <h4>Identifiez-vous.</h4>
            <p>Blablabla</p>
          </div>
        </div>

        <div class="divider grey darken-3"></div>
    
    <div class="container">

      <div class="row">
        <div class="input-field col s12">
          <input id="email" type="email" class="validate">
          <label for="email">Adresse mail</label>
        </div>
      </div>

      <div class="row">
        <div class="input-field col s12">
          <input id="password" type="password" class="validate">
          <label for="password">Mot de passe</label>
        </div>
      </div>

      <div class="row">
        <label for="form-check">
        <input type="checkbox" id="form-check"><span>Se souvenir des identifiants ?</span></label>
      </div>

      <div class="row">
        <div class="input-field col s12">
          <a href="index.php" class="btn waves-effect waves-light col s12">Valider</a>
        </div>

        <div class="input-field col s12">
          <p class="margin center medium-small sign-up">Pas de compte ? <a href="./register.php">Créez-en un.</a></p>
        </div>
      </div>

      </form>
    </div>
  </div>
  </div>
</div>


<?php
require("./footer.php");
?>