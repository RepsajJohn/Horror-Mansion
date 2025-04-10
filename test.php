<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>game_layout</title>
    <link rel="stylesheet" href="../game_layout_horror_mansion.css">
</head>

<body>
    <div class="laatste_3divs">
        <!-- Acties Div -->
        <div class="acties_div">
            <label for="acties">Acties</label>
            <div id="acties">
                <!-- Meerdere acties -->
                <?php
                $acties = ["kijk_naar", "combineer", "neem_mee", "gebruik"];
                foreach ($acties as $actie) {
                    echo "<a href='?action=$actie&item_id=' id='actie_$actie'>$actie</a> | ";
                }
                ?>
            </div>
        </div>

        <!-- Items Div -->
        <div class="item_div scrollable">
            <label for="item">Items</label>
            <div id="item">
                <?php foreach ($items as $item) { ?>
                    <div class="item">
                        <a href="?selected_item_id=<?= $item['item_id'] ?>" id="item_<?= $item['item_id'] ?>">
                            <?= $item['item_beschrijving'] ?>
                        </a>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>

    <!-- Backend verwerking -->
    <?php
    if (isset($_GET['action']) && isset($_GET['item_id'])) {
        $action = $_GET['action'];
        $item_id = $_GET['item_id'];

        foreach ($items as $item) {
            if ($item['item_id'] == $item_id) {
                echo "<div>";
                if ($action === 'kijk_naar') {
                    echo "Je kijkt naar: " . $item['item_beschrijving'] . "<br>";
                } elseif ($action === 'combineer') {
                    echo "Je probeert te combineren: " . $item['item_beschrijving'] . "<br>";
                } elseif ($action === 'neem_mee') {
                    echo "Je neemt mee: " . $item['item_beschrijving'] . "<br>";
                } elseif ($action === 'gebruik') {
                    echo "Je gebruikt: " . $item['item_beschrijving'] . "<br>";
                }
                echo "</div>";
            }
        }
    }
    ?>
</body>

</html>