<!-- Copyright 2008 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz">
    <ui:box framewidth="500" frameheight="400" layout="place" titlebar="Football Wizard">
        <pitch />
        <game id="game" />
        KeyPressed ++= function(v) { cascade = v; $game.keypress = v; }
        KeyReleased ++= function(v) { cascade = v; $game.keyrelease = v; }
        vexi.ui.frame = thisbox;
    </ui:box>
</vexi>