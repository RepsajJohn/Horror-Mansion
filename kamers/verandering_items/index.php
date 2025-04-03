<?php 
session_start();

if(!empty($_GET["item"]))
    $_SESSION['item_kamer'] = $_GET["item"];

header('item: ../');
die(); 