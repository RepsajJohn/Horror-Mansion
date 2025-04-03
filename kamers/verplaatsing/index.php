<?php
session_start();

if (!empty($_GET["kamer"]))
    $_SESSION['current_location'] = $_GET["kamer"];

header('Location: ../');
die();


if (!empty($_GET["kamer"]))
    $_SESSION['dialoog_nummer'] = $_GET["dialoog"];

header('Location: ../');
die();
