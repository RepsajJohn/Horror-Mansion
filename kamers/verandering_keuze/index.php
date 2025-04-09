<?php
session_start();

if (!empty($_GET["keuze"]))
    $_SESSION['keuze_nummer'] = $_GET["keuze"];

header('keuze: ../');
die();
