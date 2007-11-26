<!-- Copyright 2008 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz">
    <ui:box framewidth="500" frameheight="400" layout="place">
        <pitch />
        <game id="game" />
        KeyPressed ++= function(v) { $game.keypress = v; return; }
        KeyReleased ++= function(v) { $game.keyrelease = v; return; }
        vexi.ui.frame = thisbox;
    </ui:box>
</vexi>