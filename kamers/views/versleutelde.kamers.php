<?php
if ($eersteItem['item_beschrijving'] === 'oude roestige sleutel' && $Item['item_beschrijving'] === 'zolderluik') {
    echo '<a href="verplaatsing?kamer=2">Ga naar kamer 2</a>';
}
if ($eersteItem['item_beschrijving'] === 'breekuizer' && $Item['item_beschrijving'] === 'baby hekje') {
    echo '<a href="verplaatsing?kamer=5">Ga naar kamer 5</a>';
}
if ($eersteItem['item_beschrijving'] === 'kaars' && $Item['item_beschrijving'] === 'deur') {
    echo '<a href="verplaatsing?kamer=8">Ga naar kamer 8</a>';
}
if ($eersteItem['item_beschrijving'] === 'main sleutel' && $Item['item_beschrijving'] === 'deur') {
    echo '<a href="verplaatsing?kamer=16">Ga naar kamer 16</a>';
}
