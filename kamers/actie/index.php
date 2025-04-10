<?php
session_start();
if (isset($_GET['actie'])) 
{
    $actie = $_GET['actie'];
    $_SESSION['action'] = $actie;
}

header("Location: {$_SERVER['HTTP_REFERER']}");
die;
   
