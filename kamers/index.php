<?php

require_once __DIR__ . '/../PHP_files/functions.php';


if (empty($_SESSION['current_location'])) {
    $_SESSION['current_location'] = 1;
}

$sql = "SELECT * FROM kamer WHERE kamer_id = :current_location";
$statement = $conn->prepare($sql);
$statement->execute(['current_location' => $_SESSION['current_location']]);
$kamer = $statement->fetch(PDO::FETCH_ASSOC);



require_once __DIR__ . '/../game_layout_horror_mansion.php';

$sql = "SELECT * FROM dialoog WHERE dialoog_nummer = :current_dialoog";
$statement = $conn->prepare($sql);
$statement->execute(['current_dialoog' => $_SESSION['current_dialoog']]);
$kamer = $statement->fetch(PDO::FETCH_ASSOC);



require_once __DIR__ . '/../game_layout_horror_mansion.php';
