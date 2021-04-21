<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Village Green</title>

    <!-- CSS  -->
    <link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" crossorigin="anonymous" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/style.css" type="text/css" rel="stylesheet">
    <link href="css/materialize.css" type="text/css" rel="stylesheet">
    <link href="dist/lity.css" rel="stylesheet">

    <!-- BG + trucs -->
    <style>
        body {
        background-image: url("./images/background.png");
        background-repeat: no-repeat;
        height: 100vh;
        background-size: cover;
        background-attachment: fixed;
        }

        .opacity {
          background: rgba(75, 75, 75, 0.3);
          padding: 3px;
        }
    </style>
    
    <!-- Favicon -->
	<link rel="shortcut icon" href="./favicon.ico">
	<link rel="icon" sizes="16x16 32x32 64x64" href="./favicon.ico">

    <!-- Modal -->
    <?php require('./loginmodal.php'); ?>

</head>

<header>

    <!-- Navbar Fixed -->
    <div class="navbar navbar-fixed">
        <nav class="nav-wrapper grey darken-4">
            <div class="nav-extended">
                <div class="nav-wrapper">
                    <div class="nav-wrapper container">
                        <a href="./index.php" class="brand-logo hide-on-med-and-down" id="logo-container"><img src="./images/VGlogo3.png"   class="icon" width="200px" alt="Village Green"></a>

                        <a href="./index.php" class="brand-logo hide-on-large-only" id="logo-container"><img src="./images/VGlogo3.png" class="icon" width="125px" alt="Village Green"></a>

                        <ul class="right hide-on-med-and-down">
                            <li><a href="./index.php" class="nav-link">Accueil</a></li>
                            <li><a href="./products.php" class="nav-link">Boutique</a></li>
                            <li><a class="waves-effect waves-light modal-trigger" href="#cart"><i class="fas fa-shopping-cart"></i></a></li>
                            <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
                            <li><a href="#"><i class="fas fa-cogs"></i></a></li>
                              <!-- Dropdown trigger -->
                            <li><a class='dropdown-trigger' href='#' data-target='dropdown1'><i class="fas fa-users-cog"></i><i class="material-icons right">arrow_drop_down</i></a>
                              <!-- Drop modal -->
                            <?php include('./dropmodlog.php'); ?>
                        </ul>

    <!-- Navbar mobile -->
                    <ul id="nav-mobile" class="sidenav">
                        <li><a href="./index.php">Accueil</a></li>
                        <li><a href="./products.php">Boutique</a></li>
                        <li><a href="./index.php"><i class="fas fa-shopping-cart"></i>Panier</a></li>
                        <li><a href="./register.php"><i class="fas fa-users-cog"></i>Espace client</a></li>
                        <li><a href="./index.php"><i class="fas fa-cogs"></i>Settings</a></li>
                        <li><a href="#"><i class="far fa-address-card"></i>Contact</a></li>
                    </ul>
                    <a href="#" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons white-text">menu</i></a>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</header>

<body>
