<?php

$servernaam = "localhost";
$gebruikersnaam = "root";
$wachtwoord = "";
$dbname = "horror_mansion";

try {
    $conn = new PDO("mysql:host=$servernaam;dbname=$dbname", $gebruikersnaam, $wachtwoord);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully";
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();

}
 ?>

