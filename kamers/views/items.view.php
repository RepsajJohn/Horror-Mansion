<div class="item">
    <a href="items?item=<?= $item['item_id'] ?>"><?= $item['item_beschrijving'] ?></a>
    <?php
    if ($_SESSION['clicked_item'] == $item['item_id'] && $_SESSION['action'] == 'kijk_naar') {
        echo "<p>je kijkt naar  {$item['item_beschrijving']}</p>";
        $_SESSION['action'] = null;
        $_SESSION['clicked_item'] = null;
    } ?>
</div>
