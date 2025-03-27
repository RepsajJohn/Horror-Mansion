<h1><?=$kamer['kamer_naam']?></h1>

<?php if ($_SESSION["current_location"] == 1): ?>
    <a href="verplaatsing?kamer=2">Ga naar kamer 2</a>
<?php endif; ?>

<?php if ($_SESSION["current_location"] == 2): ?>
    <a href="verplaatsing?kamer=3">Ga naar kamer 3</a>
    <a href="verplaatsing?kamer=4">Ga naar kamer 4</a>
<?php endif; ?>