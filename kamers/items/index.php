<?php
session_start();

if (isset($_GET['item']) && !empty($_SESSION['action'])) {
    $itemId = $_GET['item'];


    $_SESSION["clicked_item"] = $itemId;

}

header("Location: {$_SERVER['HTTP_REFERER']}");
die;

