<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz.ui">
    <menu orient="vertical" vshrink="true">
        <menuitem id="continue" text="Continue" />
        <menuitem id="newgame" text="New Game" />
        <menuitem id="profiles" text="Profiles" />
        <menuitem id="controls" text="Controls" />
        <menuitem id="options" text="Options" />
        <menuitem id="credits" text="Credits" />
        <menuitem id="quit" text="Quit" />
        vexi.trace("foo!");
        surface ++= function(v) {
            cascade = v;
            $continue.display = v and v.activegame;
        }
        
        $continue.action ++= function(v) { event = "to_game"; return; }
        $newgame.action ++= function(v) { event = "to_newgame"; return; }
        $profiles.action ++= function(v) { event = "to_profiles"; return; }
        $controls.action ++= function(v) { event = "to_controls"; return; }
        $options.action ++= function(v) { event = "to_options"; return; }
        $credits.action ++= function(v) { event = "to_credits"; return; }
        $quit.action ++= function(v) { event = "to_quit"; return; }
        
    </menu>
</vexi>