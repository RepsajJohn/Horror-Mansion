<?php
if ($eersteItem['item_beschrijving'] === 'oude roestige sleutel' && $item['item_beschrijving'] === 'zolderluik') {
    echo '<a href="verplaatsing?kamer=2">Ga naar kamer 2</a>';
} elseif ($eersteItem['item_beschrijving'] === 'breekuizer' && $item['item_beschrijving'] === 'baby hekje') {
    echo '<a href="verplaatsing?kamer=5">Ga naar kamer 5</a>';
} elseif ($eersteItem['item_beschrijving'] === 'kaars' && $item['item_beschrijving'] === 'deur') {
    echo '<a href="verplaatsing?kamer=8">Ga naar kamer 8</a>';
} elseif ($eersteItem['item_beschrijving'] === 'main sleutel' && $item['item_beschrijving'] === 'deur') {
    echo '<a href="verplaatsing?kamer=16">Ga naar kamer 16</a>';
} else {
    echo '<p>Deze combinatie is niet geldig.</p>';
}
