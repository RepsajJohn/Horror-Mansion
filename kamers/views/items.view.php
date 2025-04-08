<div class="item">
    <a href="?link=item"><?= $item['item_beschrijving'] ?></a>
</div>
<?php


if (isset($_GET['link'])) {
    $link = $_GET['link'];


    $_SESSION["clicked_$link"] = true;


    if (!empty($_SESSION['clicked_kijk_naar']) && !empty($_SESSION['clicked_item'])) {
        echo "je kijkt naar  $item[item_beschrijving] <br>";
    }
    if (!empty($_SESSION['clicked_combineer']) && !empty($_SESSION['clicked_item']) && !empty($_SESSION['clicked_item'])) {
        echo "je combineerd  $item[item_beschrijving]" . " met  $item[item_beschrijving] <br>";
    }

    if (!empty($_SESSION['clicked_neem_mee']) && !empty($_SESSION['clicked_item'])) {
        echo "je nam een  $item[item_beschrijving] mee <br>";
    }
    if (!empty($_SESSION['clicked_gebruik']) && !empty($_SESSION['clicked_item'])) {
        echo "je gebruikt de   $item[item_beschrijving] <br>";
    }
}
