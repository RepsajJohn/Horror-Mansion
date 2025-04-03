<!DOCTYPE html>
<html lang="en">
<?php






?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>game_layout</title>
    <link rel="stylesheet" href="../game_layout_horror_mansion.css">
</head>

<body>
    <?php
    // Simulatie van links uit een database
    $databaseLinks = [
        "dialoog" => "https://example.com/dialoog1",
        "navigatie" => "https://example.com/nav1",
        "hand" => "https://example.com/hand1",
        "rugzak" => "https://example.com/rugzak1",
        "acties" => "https://example.com/actie1",
        "item" => "https://example.com/item1",
        "npcs" => "https://example.com/npc1"
    ];
    ?>



    </div>
    </div>

    <div class="dialoog_bovenbalk">
        <textarea id="dialoog" name="dialoog" rows="1" cols="100">Dialoog</textarea>
    </div>
    <div class="dialoog_div">
        <textarea id="dialoog" name="dialoog" rows="26" cols="100">
            <?php require_once __DIR__ . "/kamers/views/dialoog.view.php";

            ?>
            
        </textarea>

    </div>

    <div class=" container">

        <div class="eerste_3divs">
            <div class="navigatie_div">
                <label for="navigatie">Navigatie</label>
                <div>


                    <?php require_once __DIR__ . "/kamers/views/kamers.view.php"; ?>



                    <div>

                    </div>




                </div>
            </div>

            <div class="hand_div">
                <label for="hand">Hand</label>
                <div id="hand"><?php echo "<a href='{$databaseLinks["hand"]}'>{$databaseLinks["hand"]}</a>"; ?>

                </div>
            </div>

            <div class="rugzak_div">
                <label for="rugzak">Rugzak</label>
                <div id="rugzak"><?php echo "<a href='{$databaseLinks["rugzak"]}'>{$databaseLinks["rugzak"]}</a>"; ?></div>
            </div>

        </div>

        <div class="laatste_3divs">
            <div class="acties_div">
                <label for="acties">Acties</label>
                <div id="acties"><?php echo "<a href=''</a>"; ?><?php

                                                                echo acties(); ?></div>
            </div>

            <div class="item_div scrollable">
                <div id="item">Items</div>
                <?php foreach ($items as $item) {
                    include __DIR__ . '/kamers/views/items.view.php';
                } ?>
            </div>

            <div class="npcs_div">
                <label for="npcs">NPC's</label>
                <div id="npcs"><?php echo "<a href='{$databaseLinks["npcs"]}'>{$databaseLinks["npcs"]}</a>"; ?></div>
            </div>
        </div>
    </div>
    </div>
</body>

</html>