<div class="item">
<<<<<<< HEAD
    <a href="items?item=<?= $item['item_id'] ?>"><?= $item['item_beschrijving'] ?></a>
    <?php
    if ($_SESSION['clicked_item'] == $item['item_id'] && $_SESSION['action'] == 'kijk_naar') {
        echo "<p>je kijkt naar  {$item['item_beschrijving']}</p>";
        $_SESSION['action'] = null;
        $_SESSION['clicked_item'] = null;
    } ?>
</div>
=======
    <a href="?link=item"><?= $item['item_beschrijving'] ?></a>
</div>
<?php
if (isset($_GET['link'])) {
    $link = $_GET['link'];


    $_SESSION["clicked_$link"] = true;


    if (!empty($_SESSION['clicked_kijk_naar']) && !empty($_SESSION['clicked_item'])) {
        echo "je kijkt naar  $item[item_beschrijving]";
    }
}
>>>>>>> main
