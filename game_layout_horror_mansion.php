<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>horror_mansion</title>
    <link rel="stylesheet" href="../game_layout_horror_mansion.css">
</head>

<body>
    <div class="dialoog_bovenbalk">

    </div>

    <div class="dialoog_div">
        <div class="dialoog_div_2">
            <?php
            include_once __DIR__ . '/kamers/views/dialoog.view.php';


            if (isset($_GET['action']) && isset($_GET['selected_item_id'])) {

                $_SESSION['selected_action'] = $_GET['action'];
                $_SESSION['selected_item_id'] = $_GET['selected_item_id'];
            }


            $selected_action = $_SESSION['selected_action'] ?? null;
            $selected_item_id = $_SESSION['selected_item_id'] ?? null;



            if ($selected_action && $selected_item_id) {
                $action = $selected_action;


                foreach ($items as $item) {
                    if ($item['item_id'] == $selected_item_id) {
                        echo "<div>";
                        if ($action === 'kijk_naar') {
                            echo "Je kijkt naar: " . $item['item_beschrijving'] . "<br>";
                        } elseif ($action === 'combineer') {
                            echo "Je combineert: " . $item['item_beschrijving'] . " met " . $item['item_beschrijving'] . "<br>";
                        } elseif ($action === 'neem_mee') {
                            echo "Je hebt: " . $item['item_beschrijving'] . " meegenomen<br>";
                        } elseif ($action === 'gebruik') {
                            echo "Je gebruikt: " . $item['item_beschrijving'] . "<br>";
                        }
                        echo "</div>";
                    }
                }
            }
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

        <div class="hand_div">
            <label for="hand">Hand</label>
            <div id="hand"></div>
        </div>

        <div class="rugzak_div">
            <label for="rugzak">Rugzak</label>
            <div id="rugzak"></div>
        </div>
    </div>

    <div class="laatste_3divs">
        <div class="acties_div">
            <label for="acties">Acties</label>
            <div id="acties">

                <?php

                $acties = ["kijk_naar", "combineer", "neem_mee", "gebruik", "praat_met"];
                foreach ($acties as $actie) {

                    echo "<a href='?action=$actie&selected_item_id=" . ($selected_item_id ?? '') . "'>" . ucfirst($actie) . "</a><br> ";
                }
                ?>

            </div>
        </div>
        <div class="item_div scrollable">
            <div id="item">Items</div>
            <?php

            foreach ($items as $item) {
                echo "<div class='item'>";

                echo "<a href='?selected_item_id=" . $item['item_id'] . "&action=" . ($selected_action ?? '') . "'>" . $item['item_beschrijving'] . "</a>";
                echo "</div>";
            }
            ?>
        </div>

        <div class="npcs_div">
            <label for="npcs">NPC's</label>
            <div id="npcs"><?php include_once __DIR__ . '/kamers/views/npc.view.php' ?></div>
        </div>
    </div>

</body>

</html>