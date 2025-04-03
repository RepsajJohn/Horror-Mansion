<?php

require_once __DIR__ . '/../PHP_files/functions.php';


if (empty($_SESSION['current_location'])) {
    $_SESSION['current_location'] = 1;
}

$sql = "SELECT * FROM kamer WHERE kamer_id = :current_location";
$statement = $conn->prepare($sql);
$statement->execute(['current_location' => $_SESSION['current_location']]);
$kamer = $statement->fetch(PDO::FETCH_ASSOC);

$items_sql = "SELECT item_beschrijving FROM item WHERE item_nummer = :current_location";
$stmt = $conn->prepare($items_sql);
$stmt->execute(['current_location' => $_SESSION['current_location']]);
$items = $stmt->fetchAll(PDO::FETCH_ASSOC);




require_once __DIR__ . '/../game_layout_horror_mansion.php';

