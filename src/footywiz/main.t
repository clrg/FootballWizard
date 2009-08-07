<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns:meta="vexi://meta" xmlns="footywiz"
    xmlns:vgl="vexi.vegalib" xmlns:pf="vexi.pageflow">
    <meta:doc>
        <author>Charles Goodwin</author>
    </meta:doc>
    
    <vgl:surface />
    <ui:box framewidth="640" frameheight="480" frametitle="Football Wizard 0.0dev" layout="place" shrink="true">
        <game id="game" />
        <menu id="menu" />
        
        KeyPressed ++= function(v) {
            cascade = v;
            if (v=="escape") surface.paused = true;
        }
        
        vexi.ui.frame = thisbox;
        
    </ui:box>
</vexi>