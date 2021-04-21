<?php
require('./header.php');
?>

<div class="container">

  <div id="basket" class="row">
    <div class="col s12 z-depth-4 card-panel opacity">
      <form class="log-form">

        <div class="row">
          <div class="input-field col s12 center">
            <h4>Votre panier</h4>
            <p>Blablabla</p>
          </div>
        </div>

        <div class="divider grey darken-3"></div>
    
        <div class="container">

          <table class="highlight responsive-table">
            <thead>
              <tr>
                  <th>Photo</th>
                  <th>Item</th>
                  <th>Quantité</th>
                  <th>Prix</th>
                  <th>Total</th>
              </tr>
            </thead>

            <tbody>
              <tr>
                <td><img src="./images/<?php echo $row->pro_id; ?>.<?php echo $row->pro_pic; ?>"></td>
                <td><?php echo $row->pro_name; ?></td>
                <td></td>
                <td><?php echo $row->pro_price; ?></td>
                <td></td>
              </tr>
            </tbody>
          </table>

        </div>

      </form>
    </div>
  </div>

</div>


<?php
require("./footer.php");
?>