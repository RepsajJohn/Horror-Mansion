<?php

require_once __DIR__ . '/../PHP_files/functions.php';


if (empty($_SESSION['current_location'])) {
    $_SESSION['current_location'] = 1;
}

$sql = "SELECT * FROM kamer WHERE kamer_id = :current_location";
$statement = $conn->prepare($sql);
$statement->execute(['current_location' => $_SESSION['current_location']]);
$kamer = $statement->fetch(PDO::FETCH_ASSOC);


$items_sql = "SELECT item_id, item_beschrijving FROM item WHERE kamer_nummer = :current_location";
$stmt = $conn->prepare($items_sql);
$stmt->execute(['current_location' => $_SESSION['current_location']]);
$items = $stmt->fetchAll(PDO::FETCH_ASSOC);






$dialoog_sql = "SELECT feedback FROM dialoog WHERE kamer_id = :current_location";
$statement = $conn->prepare($dialoog_sql);
$statement->execute(['current_location' => $_SESSION['current_location']]);
$dialoog = $statement->fetch(PDO::FETCH_ASSOC);

$npc_sql = "SELECT npc_naam , npc_id FROM npc WHERE npc_id = :current_location";
$statement = $conn->prepare($npc_sql);
$statement->execute(['current_location' => $_SESSION['current_location']]);
$npc = $statement->fetch(PDO::FETCH_ASSOC);

function getRandomDialoogVanNPC($conn, $npc_id)
{
    $sql = "SELECT keuze FROM npc_keuze WHERE npc_nummer = :npc_id ORDER BY RAND() LIMIT 1";
    $stmt = $conn->prepare($sql);
    $stmt->execute(['npc_id' => $npc_id]);
    $result = $stmt->fetch(PDO::FETCH_ASSOC);

    return $result ? $result['keuze'] : "Deze NPC heeft niets te zeggen...";
}







require_once __DIR__ . '/../game_layout_horror_mansion.php';
