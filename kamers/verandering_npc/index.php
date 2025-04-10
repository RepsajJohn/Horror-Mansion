<?php
session_start();

if (!empty($_GET["npc"]))
    $_SESSION['kamer_nummer'] = $_GET["npc"];

header('npc: ../');
die();
