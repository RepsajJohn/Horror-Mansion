<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['terug'])) {
    // Controleer of er een referer (vorige pagina) is
    if (isset($_SERVER['current_location'])) {
        // Stuur de gebruiker terug naar de referer
        header('Location: ' . $_SERVER['current_location']);
        exit; // Beëindig de uitvoering om onverwachte uitvoer te voorkomen
    } else {
        // Als er geen referer is, stuur naar een standaardpagina
        header('Location: /current_location');
        exit;
    }
}