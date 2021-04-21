



<?php

$cli_surname = $cli_name = $cli_mail = $cli_password = "";

$cli_surname=$_POST['surname'];
$cli_name=$_POST['name'];
$cli_mail=$_POST['email'];
$cli_password=$_POST['password'];
$hash = password_hash($cli_password, PASSWORD_DEFAULT);

if (!empty($_POST["submit"]))
{

    if (empty($_POST["surname"]))
    {
        // echo "Le champ doit être renseigné.";
    }
    else
    {
        $cli_surname=$_POST["surname"];
    }

    if (empty($_POST["name"]))
    {
        // echo "Le champ doit être renseigné.";
    }
    else
    {
        $cli_name=$_POST["name"];
    }

    if (empty($_POST["email"]))
    {
        // echo "Le champ doit être renseigné.";
    }
    else
    {
        $cli_mail=$_POST["email"];
    }
    
    if (empty($_POST["password"]))
    {
        // echo "Le champ doit être renseigné.";
    }
    else
    {
        $cli_password=$_POST["password"];
    }
}
    
echo "$cli_mail $cli_name";

require("_config.php");

try {
    $requete = $db->prepare("INSERT INTO `FR_Clients` (`cli_surname`, `cli_name`, `cli_mail`, `cli_password`) VALUES (:surname, :cli_name, :mail, :password)");

    // $requete->bindValue(":clid", $cli_id, PDO::PARAM_INT);
    $requete->bindValue(":surname", $cli_surname, PDO::PARAM_STR);
    $requete->bindValue(":cli_name", $cli_name, PDO::PARAM_STR);
    $requete->bindValue(":mail", $cli_mail, PDO::PARAM_STR);
    $requete->bindValue(":password", $hash, PDO::PARAM_STR);
    
    $requete->execute();
    
    $requete->closeCursor();
}

catch (Exception $e) {
    echo "Erreur : " . $e->getMessage() . ". <br>";
    echo "N° : " . $e->getCode() . "<br>";
    die("Fin du script.");
}



header("Location: login.php");
exit;
?>


