<?php

session_start();

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
// database connection 
?>

<?php
function acties()
{
    if ($_SESSION["current_location"])
        echo '<a href="">kijk naar </a>  <br>';
    echo '<a href="">combineer ..... met ..... </a>  <br>';
    echo '<a href="">neem mee</a>  <br>';
    echo '<a href="">gebruik</a>  <br>';
    echo '<a href="">praat met</a> <br>';
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
