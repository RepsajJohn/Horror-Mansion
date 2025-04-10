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
?>

<?php



function acties()
{


    $kijknaar = '<a href="actie?actie=kijk_naar">kijk naar</a><br>';
    echo $kijknaar;

    $combineer = '<a href="actie?actie=combineer">combineer ..... met .....</a><br>';
    echo $combineer;

    $neem_mee = '<a href="actie?actie=neem_mee">neem mee</a><br>';
    echo $neem_mee;

    $gebruik = '<a href="actie?actie=gebruik">gebruik</a><br>';
    echo $gebruik;

    $praat_met = '<a href="actie?actie=praat_met">praat met</a><br>';
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
