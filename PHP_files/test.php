<?
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
