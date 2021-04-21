<!-- Modal Trigger dans head -->


<!-- Modal Structure -->
<div id="login" class="modal">
  <div class="modal-content white-text">

    <h4>Identifiez-vous</h4>

    <form action="#">

    <div class="input-field">
      <i class="material-icons prefix white-text">person</i>
      <input type="text" id="mail">
      <label for="mail">Email</label>
    </div>

    <div class="input-field">
      <i class="material-icons prefix">lock</i>
      <input type="password" id="pass">
      <label for="pass">Mot de passe</label>
    </div>

    <div class="row left" style="margin-left:10px;">
    <label for="check">
    <input type="checkbox" id="check"><span>Se souvenir des identifiants</span></label>
    </div>
    <br>

    <input type="submit" value="Login" class="btn btn-large center">

    <div class="row">
      <div class="input-field col s12">
        <p class="margin center medium-small sign-up">Vous n'avez pas de compte ? <br> <a href="./register.php">Créez-en un !</a></p>
      </div>
    </div>

    </form>

  </div>
</div>
