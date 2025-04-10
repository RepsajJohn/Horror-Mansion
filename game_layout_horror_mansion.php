<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>game_layout.</title>
    <link rel="stylesheet" href="../game_layout_horror_mansion.css">
</head>

<body>
    <div class="dialoog_bovenbalk">
    </div>

    <div class="dialoog_div">
        <div class="dialoog_div_2">
            <label for="dialoog_div_2">Dialoog</label>
            <?php
            include_once __DIR__ . '/kamers/views/dialoog.view.php';

            // Start de sessie om gegevens op te slaan


            // Sla de huidige actie en item-ID op in de sessie als ze zijn ingesteld
            if (isset($_GET['action']) && isset($_GET['selected_item_id'])) {
                $_SESSION['actions'][] = [
                    'action' => $_GET['action'],
                    'item_id' => $_GET['selected_item_id']
                ];
            }

            // Toon acties vanuit de sessie
            if (!empty($_SESSION['actions'])) {
                foreach ($_SESSION['actions'] as $saved_action) {
                    $action = $saved_action['action'];
                    $selected_item_id = $saved_action['item_id'];

                    foreach ($items as $item) {
                        if ($item['item_id'] == $selected_item_id) {
                            echo "<div>";
                            if ($action === 'kijk_naar') {
                                echo "Je kijkt naar: " . $item['item_beschrijving'] . "<br>";
                            } elseif ($action === 'combineer') {

                                $other_item = null;
                                do {
                                    $other_item = $items[array_rand($items)];
                                } while ($other_item['item_id'] == $item['item_id']);
                                echo "Je combineert: " . $item['item_beschrijving'] . " met " . $other_item['item_beschrijving'] . "<br>";
                            } elseif ($action === 'neem_mee') {
                                // Zorg ervoor dat het item wordt meegenomen en verwijderd uit de lijst
                                echo "Je hebt: " . $item['item_beschrijving'] . " meegenomen<br>";

                                // Voeg het item toe aan de rugzak
                                $_SESSION['rugzak'][] = $item;

                                // Verwijder het item uit de lijst van items
                                $key = array_search($item['item_id'], array_column($items, 'item_id'));
                                if ($key !== false) {
                                    unset($items[$key]);
                                }
                            } elseif ($action === 'gebruik') {
                                echo "Je  kunt " . $item['item_beschrijving'] . "pas gebruiken wanneer je hem in je rugzak hebt " . "<br>";
                            } elseif ($action === 'praat_met') {
                                // Hier kun je de dialoog met de NPC tonen
                                echo "Je praat met: " . $item['item_beschrijving'] . "volgens mij ben je gek aan het worden want items kunnen niks zeggen" . "<br>";
                            } else {
                                echo "Ongeldige actie.<br>";
                            }
                            echo "</div>";
                        }
                    }
                }
            }
            ?>
        </div>
        <div>
        </div>
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
                // Toon de inhoud van de rugzak
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
                // Zorg ervoor dat de actie als eerst geselecteerd wordt
                $acties = ["kijk_naar", "combineer", "neem_mee", "gebruik", "praat_met"];
                foreach ($acties as $actie) {
                    // De actie wordt nu eerst in de URL geplaatst
                    echo "<a href='?action=$actie'>" . ucfirst($actie) . "</a><br> ";
                }
                ?>
            </div>
        </div>

        <div class="item_div scrollable">
            <div id="item">Items</div>
            <?php
            // Controleer of de actie is geselecteerd
            if (isset($_GET['action'])) {
                // Nu de actie is geselecteerd, tonen we de items
                foreach ($items as $item) {
                    echo "<div class='item'>";
                    // Hier kan het item worden gekozen nadat de actie is geselecteerd
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
            <div id="npcs"><?php include_once __DIR__ . '/kamers/views/npc.view.php' ?>


            </div>
        </div>
    </div>
</body>

</html>