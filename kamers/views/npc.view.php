<?php
if (isset($_GET['action'])) {
    foreach ($npcs as $npc) {
        echo "<div class='npc'>";
        echo "<a href='?action=" . $_GET['action'] . "&selected_npc_id=" . $npc['npc_id'] . "'>" . htmlspecialchars($npc["npc_naam"]) . "</a>";
        echo "</div>";
    }
} else {
    echo "<p>Selecteer eerst een actie.</p>";
}
