<?php
$serverName = "localhost";
$userName = "*root*";
$password = "**";
$dbName = "*wordpressdb*";
//utworzenie połączenia
try {
    $connection = new PDO("mysql:host=$serverName;dbname=$dbName", $userName, $password);
    $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e)
{
    echo "No connection: " . $e->getMessage();
}                     
$connection->query("SET NAMES utf8");

?>
