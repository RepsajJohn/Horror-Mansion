<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>game_layout</title>
    <link rel="stylesheet" href="../game_layout_horror_mansion.css">
</head>

<body>
    <div class="dialoog_bovenbalk">
        <textarea id="dialoog" name="dialoog" rows="1" cols="100">Dialoog</textarea>
    </div>

    <div class="dialoog_div">
        <div class="dialoog_div_2">
            <?php require_once __DIR__ . "/kamers/views/dialoog.view.php";
            if (isset($_GET['action']) && isset($_GET['item_id'])) {
                $action = $_GET['action'];
                $item_id = $_GET['item_id'];

                $_SESSION["action_$action"] = true;
                $_SESSION["item_$item_id"] = true;

                foreach ($items as $item) {
                    if ($item['item_id'] == $item_id) {
                        if ($action === 'kijk_naar') {
                            echo  "Je kijkt naar: " . $item['item_beschrijving'] . "<br>";
                        } elseif ($action === 'combineer') {
                            echo "Je combineert: " . $item['item_beschrijving'] . " met een ander item.<br>";
                        } elseif ($action === 'neem_mee') {
                            echo "Je hebt: " . $item['item_beschrijving'] . " meegenomen.<br>";
                        } elseif ($action === 'gebruik') {
                            echo "Je gebruikt: " . $item['item_beschrijving'] . ".<br>";
                        }
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
            <div id="hand">
            </div>
        </div>

        <div class="rugzak_div">
            <label for="rugzak">Rugzak</label>
            <div id="rugzak"></div>
        </div>

    </div>

    <div class="laatste_3divs">
        <div class="acties_div">
            <label for="acties">Acties</label>
            <div id="acties"><?php
                                echo acties();
                                ?>
            </div>
        </div>

        <div class="item_div scrollable">
            <div id="item">Items</div>
            <?php foreach ($items as $item) { ?>
                <div class="item">
                    <a href="?action=kijk_naar&item_id=<?= $item['item_id'] ?>"><?= $item['item_beschrijving'] ?></a>
                </div>
            <?php } ?>
        </div>

        <div class="npcs_div">
            <label for="npcs">NPC's</label>
            <div id="npcs"><?php include_once __DIR__ . '/kamers/views/npc.view.php' ?></div>
        </div>
    </div>

</body>

</html>