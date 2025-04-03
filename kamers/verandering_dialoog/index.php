<?php
session_start();

if (!empty($_GET["dialoog"]))
    $_SESSION['dialoog_kamer'] = $_GET["dialoog"];

header('dialoog: ../');
die();
