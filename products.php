<?php
require('./header.php');
?>

<!-- Parallax top -->
  <div class="parallax-container valign-wrapper parasizerestrict">
    <div class="section no-pad-bot">
      <div class="container">
          <div class="row left white-text">
            <!-- <h3 class="header col s12 light">Surveillez nos promotions !</h5> -->
          </div>
      </div>
    </div>
    
    <div class="parallax"><img src="./images/110629165835_34.jpg" alt="Fond violons et partitions"></div>
  </div>


<div class="container">
  <div class="section">
    <div class="row">
      <div class="col s12 center">

      <h3>Boutique</h3>

      <div class="row masonry-grid">


<!-- Connexion + requête -->
<?php
require "_config.php";
$request = "SELECT * FROM FR_prosup";
$result = $db->query($request);
$rowNbr = $result->rowCount();

if ($rowNbr>0) {
  while ($row = $result -> fetch(PDO::FETCH_OBJ)) {
?>

<!-- Modèle + données -->
<div class="col s12 m3">
  <div class="card opacity medium" style="overflow: visible";>

    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="./images/<?php echo $row->pro_id; ?>.<?php echo $row->pro_pic; ?>">
    </div>

    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">
        <?php echo $row->pro_name; ?>
        <i class="material-icons right">more_vert</i>
      </span>
      <p>
        <div class="divider"></div>
        <?php echo $row->pro_label; ?>
        <br>
        <br>
        Création de chez
        <br>
        <?php echo $row->sup_name; ?>.
      </p>
    </div>

    <div class="card-action">
      <span class="grey-text text-darken-4 left"><?php echo $row->pro_price; ?>€</span>
      <a href="#"><i class="fas fa-cart-plus right small"></i></a>
    </div>

    <div class="card-reveal" style="display: none; transform: translateY(0%);">
      <span class="card-title grey-text text-darken-4">
        <?php echo $row->pro_name ?>
        <i class="material-icons right">close</i>
      </span>
      <p>
        <?php echo $row->pro_desc ?>
      </p>
    </div>
    
  </div>
</div>

<!-- Fin requête -->
<?php
}
$result->closeCursor();
}
?>



      </div>
      
      </div>
    </div>
  </div>
</div>


<?php
require('./footer.php');
?>