<?php
try
{
    $pdo = new PDO('mysql:host=localhost:3306;dbname=finelia', 'user', 'test123', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
}
catch(Exception $e)
{
    die('Erreur : ' . $e->getMessage());
}
?>
