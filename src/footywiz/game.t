<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns:vgl="vexi.vegalib" xmlns="footywiz">
    <ui:box align="topleft" layout="place">
        <actor.pitch pitchwidth="3" pitchheight="3" />
        <actor.ball id="ball" />
        <actor.player id="player" />
        <ui:box align="top" vshrink="true">
            <ui.gametext text="Press escape to reset" />
        </ui:box>
        <ui.gametext id="fps" shrink="true" />
        
        ////////
        // basic key handling
        
        var key_x = null;
        var key_y = null;
        
        var reset = function() {
            $ball.motionx = 0;
            $ball.motiony = 0;
            $ball.x = -248;
            $ball.y = -196;
            $player.motionx = 0;
            $player.motiony = 0;
            $player.x = -244;
            $player.y = -200;
            $player.actualx = -244;
            $player.actualy = -200;
        }
        
        thisbox.keypress ++= function(v) {
            cascade = v;
            switch(v) {
            case "escape":
                reset();
                break;
            case "left":
            case "right":
                key_x = v;
                break;
            case "up":
            case "down":
                key_y = v;
                break;
            }
        }
        
        thisbox.keyrelease ++= function(v) {
            cascade = v;
            if (key_x == v) key_x = null;
            if (key_y == v) key_y = null;
        }
        
        ////////
        // helpful functions
        
        var hit_x = function(px, pw, bx, bw) { return bx>=px and pw+px>=bw+bx; }
        var hit_y = function(py, ph, by, bh) { return py+ph>=by-1 and by+bh+1>=py+ph; }
        
        var max = function(a, b) { return a>b ? a : b; }
        var min = function(a, b) { return b>a ? a : b; }
        
        ////////
        // main game thread
        var foo = thisbox;
        var spdnorm = 128;
        var spddiag = spdnorm * 11 / 16;
        var oldtime = vexi.date().getTime();
        var newtime;
        var movex = 0; var movey = 0;
        vexi.thread = function(v) {
            while (true) {
                // terminate the thread if no longer valid
                if (!visible) break;
                newtime = vexi.date().getTime();
                var dtime = newtime-oldtime;
                oldtime = newtime;
                
                ////////
                // player handling
                
                var rate = key_x and key_y ? spddiag : spdnorm;
                $player.motionx = key_x == "left" ? -rate : (key_x == "right" ? rate: 0);
                $player.motiony = key_y == "up" ? -rate : (key_y == "down" ? rate: 0);
                $player.actualx += $player.motionx * dtime/1000;
                $player.x = $player.actualx;
                $player.actualy += $player.motiony * dtime/1000;
                $player.y = $player.actualy;
                
                $player.setDirection(key_y=="up", key_y=="down", key_x=="left", key_x=="right");
                $player.animate();
                $fps.text = vexi.math.round(1000/dtime);
                vexi.thread.sleep(10);
            }
        }
        
        // set starting positions
        reset();
        
    </ui:box>
</vexi>