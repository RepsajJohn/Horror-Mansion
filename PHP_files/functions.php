<?php

session_start();

$servernaam = "localhost";
$gebruikersnaam = "root";
$wachtwoord = "";
$dbname = "horror_mansion";

try {
    $conn = new PDO("mysql:host=$servernaam;dbname=$dbname", $gebruikersnaam, $wachtwoord);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    die ("Connection failed: " . $e->getMessage());

}
 // database connection 
