<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz.ui">
    <menu orient="vertical" vshrink="true">
        <menuitem id="back" text="Back" />
        <menuitem text="Screen Size: 640x480" />
        <menuitem text="Fullscreen: Off" />
        
        $back.action ++= function(v) { event = "back"; return; }
        
    </menu>
</vexi>