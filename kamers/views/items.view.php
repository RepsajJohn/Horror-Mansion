<div class="item">
    <a href="?action=kijk_naar&item_id=<?= $item['item_id'] ?>"><?= $item['item_beschrijving'] ?></a>

</div>

<?php
if (isset($_GET['link'])) {
    $link = $_GET['link'];


    $_SESSION["clicked_$link"] = true;


    if (!empty($_SESSION['clicked_kijk_naar']) && !empty($_SESSION['clicked_item'])) {
        echo "je kijkt naar  $item[item_beschrijving]";
    }
}
