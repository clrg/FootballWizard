<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz.ui">
    <menu>
        <menuitem id="back" text="Back" />
        <menuitem id="width" text="Pitch Width: Normal" />
        <menuitem id="height" text="Pitch Length: Normal" />
        <menuitem id="start" text="Start Game" />
        
        $back.action ++= function(v) { event = "back"; return; }
        $start.action ++= function(v) { event = "start"; return; }
        
    </menu>
</vexi>