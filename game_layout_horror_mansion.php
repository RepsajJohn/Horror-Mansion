<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>game_layout</title>
    <link rel="stylesheet" href="../game_layout_horror_mansion.css">
</head>

<body>
    <div class="dialoog_bovenbalk"></div>
    <div class="dialoog_div">
        <div class="dialoog_div_2">
            <label for="dialoog_div_2">Dialoog</label>
            <?php




            if (isset($_GET['action'])) {
                $actionData = [
                    'action' => $_GET['action']
                ];

                if (isset($_GET['selected_item_id'])) {
                    $actionData['type'] = 'item';
                    $actionData['id'] = $_GET['selected_item_id'];
                } elseif (isset($_GET['selected_npc_id'])) {
                    $actionData['type'] = 'npc';
                    $actionData['id'] = $_GET['selected_npc_id'];
                }

                $_SESSION['actions'][] = $actionData;
            }




            // Functie om acties op items af te handelen
            function actie_met_items($action, $item)
            {
                $output = "<div>";
                switch ($action) {
                    case 'kijk_naar':
                        echo "Je kijkt naar: " . $item['item_beschrijving'] . "<br>";
                        echo "<hr>";
                        break;


                    case 'combineer':
                        if (!isset($_SESSION['eerste_gebruiks_item'])) {
                            $_SESSION['eerste_gebruiks_item'] = $item;
                            echo "Je combineert " . $item['item_beschrijving'] . " met ...<br>";
                            echo "Kies nu een tweede item.";
                        } else {
                            $eersteItem = $_SESSION['eerste_gebruiks_item'];
                            echo "Je combineert " . $eersteItem['item_beschrijving'] . " met " . $item['item_beschrijving'] . "<br>";
                            include_once __DIR__ . '/kamers/views/combinatie.view.php';
                            unset($_SESSION['eerste_gebruiks_item']);
                            if ($eersteItem['item_beschrijving'] === 'batterijen' && $item['item_beschrijving'] === 'kleine afstandsbediening ') {
                                echo "je hebt een opgeladen afstandsbediening gemaakt<br>";
                            } elseif ($eersteItem['item_beschrijving'] === 'main sleutel staartje' && $item['item_beschrijving'] === 'main sleutel kopje') {
                                echo "je hebt een main sleutel gemaakt<br>";
                            } elseif ($eersteItem['item_beschrijving'] === 'zwevende kaars' && $item['item_beschrijving'] === 'lucifers ') {
                                echo "je hebt een kaars gemaakt<br>";
                            } elseif ($eersteItem['item_beschrijving'] === 'koffiebonen' && $item['item_beschrijving'] === 'flessen water') {
                                echo "je hebt een koffie gemaakt<br>";
                            } else {
                                echo '<p>Deze items kan je niet combineren.</p>';
                            }
                        }
                        echo "<hr>";
                        break;


                    case 'neem_mee':
                        $alInRugzak = false;
                        if (!empty($_SESSION['rugzak'])) {
                            foreach ($_SESSION['rugzak'] as $r) {
                                if ($r['item_id'] === $item['item_id']) {
                                    $alInRugzak = true;
                                    break;
                                }
                            }
                        }
                        if ($alInRugzak) {
                            echo "Je hebt dit item al in je rugzak.<br>";
                        } else {
                            echo "Je hebt: " . $item['item_beschrijving'] . " meegenomen<br>";
                            $_SESSION['rugzak'][] = $item;


                            foreach ($GLOBALS['items'] as $key => $i) {
                                if ($i['item_id'] === $item['item_id']) {
                                    unset($GLOBALS['items'][$key]);
                                    break;
                                }
                            }


                            $GLOBALS['items'] = array_values($GLOBALS['items']);
                        }
                        echo "<hr>";
                        break;

                    case 'gebruik':
                        if (!isset($_SESSION['eerste_gebruiks_item'])) {
                            $_SESSION['eerste_gebruiks_item'] = $item;
                            echo "Je hebt " . $item['item_beschrijving'] . " geselecteerd om te gebruiken op een ander item.<br>";
                            echo "Kies nu een tweede item.";
                        } else {
                            $eersteItem = $_SESSION['eerste_gebruiks_item'];
                            echo "Je gebruikt " . $eersteItem['item_beschrijving'] . " op " . $item['item_beschrijving'] . "<br>";
                            unset($_SESSION['eerste_gebruiks_item']);

                            if ($eersteItem['item_beschrijving'] === 'oude roestige sleutel' && $item['item_beschrijving'] === 'zolderluik') {
                                echo '<a href="verplaatsing?kamer=2">Ga naar kamer 2</a>';
                            } elseif ($eersteItem['item_beschrijving'] === 'breekuizer' && $item['item_beschrijving'] === 'hekje voor trap') {
                                echo '<a href="verplaatsing?kamer=5">Ga naar kamer 5</a>';
                            } elseif ($eersteItem['item_beschrijving'] === 'zwevende kaars' && $item['item_beschrijving'] === 'deur') {
                                echo '<a href="verplaatsing?kamer=8">Ga naar kamer 8</a>';
                            } elseif ($eersteItem['item_beschrijving'] === 'main sleutel' && $item['item_beschrijving'] === 'deur') {
                                echo '<a href="verplaatsing?kamer=16">Ga naar kamer 16</a>';
                            } else {
                                echo '<p>Deze items kan je niet samen gebruiken.</p>';
                            }
                        }
                        echo "<hr>";
                        break;


                    case 'praat_met':
                        echo "Je probeert te praten met: " . $item['item_beschrijving'] . ". Items kunnen echter niet praten.<br>";
                        echo "<hr>";
                        break;
                }
                $output .= "</div>";
                return $output;
            }



            function actie_praat_met_npc($action, $npc)
            {
                $output = "<div>";
                switch ($action) {

                    case 'praat_met':
                        global $conn;
                        $randomDialoog = getRandomDialoogVanNPC($conn, $npc['npc_id']);
                        echo "Je praat met: " . htmlspecialchars($npc['npc_naam']) . "<br>";
                        echo "<em>\"" . htmlspecialchars($randomDialoog) . "\"</em><br>";
                        echo "<hr>";
                        break;
                }
                $output .= "</div>";
                return $output;
            }


            if (!empty($_SESSION['actions'])) {
                foreach (array_reverse($_SESSION['actions']) as $saved_action) {

                    $action = $saved_action['action'];

                    if (isset($saved_action['type']) && $saved_action['type'] === 'item') {
                        $selected_item_id = $saved_action['id'];
                        // Zoek het item in de items-array
                        foreach ($items as $item) {
                            if ($item['item_id'] == $selected_item_id) {
                                echo actie_met_items($action, $item);
                            }
                        }
                    } elseif (isset($saved_action['type']) && $saved_action['type'] === 'npc') {
                        $npc_id = $saved_action['id'];
                        // Zoek de NPC in de npcs-array
                        if ($npc['npc_id'] == $npc_id) {
                            echo actie_praat_met_npc($action, $npc);
                        }
                    }
                }
            }
            include_once __DIR__ . '/kamers/views/dialoog.view.php';
            ?>
        </div>
    </div>

    <div class="eerste_3divs">
        <div class="navigatie_div">
            <label for="navigatie">Navigatie</label>
            <div>
                <?php require_once __DIR__ . "/kamers/views/kamers.view.php"; ?>
            </div>
        </div>

        <div class="rugzak_div">
            <label for="rugzak">Rugzak</label>
            <div id="rugzak">
                <?php
                echo "<div id='rugzak'>";
                if (!empty($_SESSION['rugzak'])) {
                    foreach ($_SESSION['rugzak'] as $rugzakItem) {
                        echo "<p>" . htmlspecialchars($rugzakItem['item_beschrijving']) . "</p>";
                    }
                } else {
                    echo "<p>De rugzak is leeg.</p>";
                }
                echo "</div>";
                ?>
            </div>
        </div>
    </div>

    <div class="laatste_3divs">
        <div class="acties_div">
            <label for="acties">Acties</label>
            <div id="acties">
                <?php
                $acties = ["kijk_naar", "combineer", "neem_mee", "gebruik", "praat_met"];
                foreach ($acties as $actie) {
                    echo "<a href='?action=$actie'>" . ucfirst($actie) . "</a><br>";
                }
                ?>
            </div>
        </div>

        <div class="item_div scrollable">
            <div id="item">Items</div>
            <?php
            if (isset($_GET['action'])) {
                foreach ($items as $item) {
                    echo "<div class='item'>";
                    echo "<a href='?action=" . $_GET['action'] . "&selected_item_id=" . $item['item_id'] . "'>" . $item['item_beschrijving'] . "</a>";
                    echo "</div>";
                }
            } else {
                echo "<p>Selecteer eerst een actie.</p>";
            }
            ?>
        </div>

        <div class="npcs_div">
            <label for="npcs">NPC's</label>
            <div id="npcs">
                <?php
                include_once __DIR__ . '/kamers/views/npc.view.php';
                ?>
            </div>
        </div>
        <?php var_dump('current_location', $_SESSION['current_location']); ?>
        ?>
    </div>

    </div>
</body>

</html>