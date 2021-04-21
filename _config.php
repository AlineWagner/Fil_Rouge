<?php

try
{
    $db = new PDO('mysql:host=localhost;dbname=aline;charset=utf8', 'aline', 'aw20104');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}

catch (Exception $e)
{
    echo "La connexion à la base de données a échoué ! <br><br>";
    echo 'Erreur : ' . $e->getMessage() . '<br>';
    echo 'N° : ' . $e->getCode() . '<br><br>';
    die('Fin du script');
}

?>