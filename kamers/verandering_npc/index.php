<?php
session_start();

if (!empty($_GET["npc"]))
    $_SESSION['npc_nummer'] = $_GET["npc"];

header('npc: ../');
die();
