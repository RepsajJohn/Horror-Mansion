<?php
if (isset($npc) && is_array($npc)) {
    echo "<div class='npc'>";
    echo "<a href='?action=praat_met&selected_npc_id=" . htmlspecialchars($npc['npc_id']) . "'>" . htmlspecialchars($npc['npc_naam']) . "</a>";
    echo "</div>";
}
