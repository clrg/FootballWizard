<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz.ui">
    <menu>
        <menuitem id="cont" text="Continue" />
        <menuitem id="menu" text="Main Menu" />
        <menuitem id="exit" text="Exit Game" />
        
        surface ++= function(v) {
            cascade = v;
            if (v) v.active = false;
        }
        
        $cont.action ++= function(v) { event = "unpause"; return; }
        $menu.action ++= function(v) { event = "menu"; return; }
        $exit.action ++= function(v) { event = "exit"; return; }
        
    </menu>
</vexi>