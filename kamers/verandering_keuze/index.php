<?php
session_start();

if (!empty($_GET["keuze"]))
    $_SESSION['kamer_nummer'] = $_GET["keuze"];

header('keuze: ../');
die();
