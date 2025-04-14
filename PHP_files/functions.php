<?php

session_start();

$servernaam = "localhost";
$gebruikersnaam = "deb85590_p21k1t3";
$wachtwoord = "EQ45VdHgCWqzfPdzJW3y";
$dbname = "deb85590_p21k1t3";

try {
    $conn = new PDO("mysql:host=$servernaam;dbname=$dbname", $gebruikersnaam, $wachtwoord);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}
// database connection 
?>

<?php



function acties()
{


    $kijknaar = '<a href="?action=kijk_naar">kijk naar</a><br>';
    echo $kijknaar;

    $combineer = '<a href="?action=combineer">combineer ..... met .....</a><br>';
    echo $combineer;

    $neem_mee = '<a href="?action=neem_mee">neem mee</a><br>';
    echo $neem_mee;

    $gebruik = '<a href="?action=gebruik">gebruik</a><br>';
    echo $gebruik;

    $praat_met = '<a href="?action=praat_met">praat met</a><br>';
    echo $praat_met;
}
?>







<?php
function dialoog()
{
    include 'kamers/index.php';

    $servernaam = "localhost";
    $gebruikersnaam = "root";
    $wachtwoord = "";
    $dbname = "horror_mansion";

    try {
        $conn = new PDO("mysql:host=$servernaam;dbname=$dbname", $gebruikersnaam, $wachtwoord);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        die("Connection failed: " . $e->getMessage());
    }


    $sql1 = "SELECT * FROM dialoog WHERE dialoog_nummer = current_location";
    $result1 = $conn->prepare($sql1);
    $result1->execute();
    while ($row = $result1->fetch(Pdo::FETCH_ASSOC)) {
        $beschrijving = $row['beschrijving'];
    }
}
?>
