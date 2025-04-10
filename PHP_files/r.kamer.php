<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> contact page</title>
    <link rel="stylesheet" href="game_layout.css">
</head>

<body>
    <?php



    // Controleer of 'waarde' bestaat in de sessie, anders stel deze in op 0
    session_start();

    // Controleer of het formulier is verzonden

    if (!isset($_SESSION['waarde'])) {
        $_SESSION['waarde'] = 5; // Startwaarde
    }

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $_SESSION['waarde']++;
    }
    $getal = $_SESSION['waarde'];

    ?>


    <p>Huidige waarde: <?php echo $_SESSION['waarde']; ?></p>
    <form method="post">
        <button type="submit">Verhoog Waarde</button>
    </form>

    <?php



    include 'functions.php';

    $sql1 = "SELECT * FROM dialoog WHERE dialoog_nummer = $getal";
    $result1 = $conn->prepare($sql1);
    $result1->execute();
    while ($row = $result1->fetch(Pdo::FETCH_ASSOC)) {
        $beschrijving = $row['beschrijving'];
    }

    $sql_2 = "SELECT * FROM npc  WHERE npc_nummer = $getal";
    $result_2 = $conn->prepare($sql_2);
    $result_2->execute();
    while ($row = $result_2->fetch(PDO::FETCH_ASSOC)) {
        $npc_naam = $row['npc_naam'];
    }
    ?>








    <div class="dialoog_logo">
        <textarea id="dialoog" name="dialoog" rows="1" cols="100">Dialoog</textarea>
    </div>

    <div class="dialoog_div">
        <textarea id="dialoog" name="dialoog" rows="29" cols="100"><?php echo "$beschrijving" ?></textarea>
    </div>



    <div class="eerste_3divs">
        <div class="navigatie_div">
            <label for="navigatie">Navigatie</label>
            <textarea id="navigatie" name="navigatie" rows="5" cols="80">
                ga naar de volgende kamer
                ga terug naar de vorige kamer

            </textarea>
        </div>

        <div class="hand_div">
            <label for="hand">Hand</label>
            <textarea id="hand" name="hand" rows="5" cols="20"></textarea>
        </div>

        <div class="rugzak_div">
            <label for="rugzak">Rugzak</label>
            <textarea id="rugzak" name="rugzak" rows="5" cols="80"></textarea>

        </div>
    </div>
    <?php $sql_3 = "SELECT * FROM keuze  WHERE keuze_nummer = $getal";
    $result = $conn->prepare($sql_3);
    $result->execute();
    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        $eerste_keuze = $row['eerste_keuze'];
        echo "\n" . $eerste_keuze;
    }
    ?>

    <div class="laatste_3divs">
        <div class="acties_div">
            <label for="acties">Acties</label>
            <textarea id="acties" name="acties" rows="5" cols="60" direction="left">

            </textarea>
        </div>


        <div class="item_div">
            <label for="item">Items</label>
            <input class="rickstest" type="text" value="
             <?php $sql_3 = "SELECT * FROM keuze  WHERE keuze_nummer = $getal";
                $result = $conn->prepare($sql_3);
                $result->execute();
                while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
                    $eerste_keuze = $row['eerste_keuze'];
                    echo "\n" . $eerste_keuze;
                }
                ?>
            
            ">
        </div>

        <div class="npcs_div">
            <label for="npcs">NPC's</label>
            <textarea id="npcs" name="npcs" rows="5" cols="60">
            <?php $sql_2 = "SELECT * FROM npc  WHERE npc_nummer = $getal";
            $result_2 = $conn->prepare($sql_2);
            $result_2->execute();
            while ($row = $result_2->fetch(PDO::FETCH_ASSOC)) {
                $npc_naam = $row['npc_naam'];
                echo $npc_naam . "\n";
            }
            ?>
            </textarea>
        </div>
    </div>

</body>