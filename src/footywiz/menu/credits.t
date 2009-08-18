<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz.ui">
    <menu orient="vertical" vshrink="true">
        <menuitem id="back" text="Back" />
        <menutext height="10" />
        <menutext text="Creator:" />
        <menutext text="Charles 'freegamer' Goodwin" />
        <menutext height="10" />
        <menutext text="Player Artwork:" />
        <menutext text="Le Chuck" />
        
        $back.action ++= function(v) { event = "back"; return; }
        
    </menu>
</vexi>