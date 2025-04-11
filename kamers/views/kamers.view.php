<h3><?= $kamer['kamer_naam'] ?></h3>

<?php
if ($_SESSION["current_location"] == 2): ?>
    <a href="verplaatsing?kamer=1">Ga naar kamer 1</a>
    <a href="verplaatsing?kamer=3">Ga naar kamer 3</a>
    <a href="verplaatsing?kamer=4">Ga naar kamer 4</a>
<?php endif; ?>

<?php if ($_SESSION["current_location"] == 3): ?>
    <a href="verplaatsing?kamer=2">Ga naar kamer 2</a>
<?php endif; ?>

<?php if ($_SESSION["current_location"] == 4): ?>
    <a href="verplaatsing?kamer=2">Ga naar kamer 2</a>
<?php endif; ?>


<?php if ($_SESSION["current_location"] == 5): ?>
    <?php $getal = ($_SESSION["current_location"] == 5) ?>
    <a href="verplaatsing?kamer=2">Ga naar kamer 2</a>
    <a href="verplaatsing?kamer=6">Ga naar kamer 6</a>
<?php endif; ?>


<?php if ($_SESSION["current_location"] == 6): ?>
    <a href="verplaatsing?kamer=2">Ga naar kamer 2</a>
    <a href="verplaatsing?kamer=7">Ga naar kamer 7</a>
<?php endif; ?>

<?php if ($_SESSION["current_location"] == 7): ?>
    <a href="verplaatsing?kamer=6">Ga naar kamer 6</a>
<?php endif; ?>

<?php if ($_SESSION["current_location"] == 8): ?>
    <a href="verplaatsing?kamer=6">Ga naar kamer 6</a>
    <a href="verplaatsing?kamer=9">Ga naar kamer 9</a>
    <a href="verplaatsing?kamer=15">Ga naar kamer 15</a>
<?php endif; ?>

<?php if ($_SESSION["current_location"] == 9): ?>
    <a href="verplaatsing?kamer=8">Ga naar kamer 8</a>
    <a href="verplaatsing?kamer=10">Ga naar kamer 10</a>
<?php endif; ?>

<?php if ($_SESSION["current_location"] == 10): ?>
    <a href="verplaatsing?kamer=9">Ga naar kamer 9</a>
<?php endif; ?>

<?php if ($_SESSION["current_location"] == 11): ?>
    <a href="verplaatsing?kamer=15">Ga naar kamer 15</a>
<?php endif; ?>

<?php if ($_SESSION["current_location"] == 12): ?>
    <a href="verplaatsing?kamer=15">Ga naar kamer 15</a>
    <a href="verplaatsing?kamer=13">Ga naar kamer 13</a>
<?php endif; ?>

<?php if ($_SESSION["current_location"] == 13): ?>
    <a href="verplaatsing?kamer=12">Ga naar kamer 12</a>
<?php endif; ?>

<?php if ($_SESSION["current_location"] == 14): ?>
    <a href="verplaatsing?kamer=15">Ga naar kamer 15</a>
<?php endif; ?>

<?php if ($_SESSION["current_location"] == 15): ?>
    <a href="verplaatsing?kamer=8">Ga naar kamer 8</a>
    <a href="verplaatsing?kamer=11">Ga naar kamer 11</a>
    <a href="verplaatsing?kamer=12">Ga naar kamer 12</a>
    <a href="verplaatsing?kamer=14">Ga naar kamer 14</a>
<?php endif; ?>