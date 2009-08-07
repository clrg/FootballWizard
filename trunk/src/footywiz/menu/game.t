<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz.ui">
    <menu>
        
        var gamePaused = function(v) {
            cascade = v;
            event = "pause";
        }
        
        surface ++= function(v) {
            if (surface) surface.paused --= gamePaused;
            cascade = v;
            if (v) {
                v.active = true;
                v.paused ++= gamePaused;
            }
        }
        
    </menu>
</vexi>