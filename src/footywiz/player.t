<!-- Copyright 2008 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz">
    <ui:box align="bottom" layout="layer" width="32" height="34">
        <ui:box id="shadow" />
        <ui:box align="topleft" layout="place" width="32" height="32">
            <ui:box id="img" fill=":.image.player" shrink="true" />
        </ui:box>
        
        var direction = 0;
        var inmotion = false;
        var startx;
        var starty;
        var speedx;
        var speedy;
        
        // store these to avoid x/y rounding cumulation
        thisbox.actualx = 0;
        thisbox.actualy = 0;
        
        thisbox.motionx = 0;
        thisbox.motiony = 0;
        
        /*
         * Animation is based on the notion that 16 pixels
         * in orthogonal directions (N,S,E,W) are equivalent
         * to 11 pixels diagonally; i.e. 16/11 ~= 1/sin(45)
         */
        
        var diag = 11/16;
        // use ceil because we want 1-4
        var ceil = vexi.math.ceil;
        // returns a value of 1-4 based on current offset
        var reld = function(dx, dy) {
            switch (direction) {
                case 0: return dy;
                case 1: return ceil((dx+dy)*diag);
                case 2: return dx;
                case 3: return ceil((dx-dy)*diag);
                case 4: return -dy;
                case 5: return ceil(-(dx+dy)*diag);
                case 6: return -dx;
                case 7: return ceil((dy-dx)*diag);
                default: return 0;
            }
        }
        
        thisbox.animate = function(v) {
            if (!inmotion) {
                startx = x;
                starty = y;
            }
            $img.x = -direction*32;
            var oy = -(ceil(reld(x-startx, y-starty)/12)%4);
            $img.y = inmotion ? oy * 32 : 0;
        }
        
        thisbox.setDirection = function(up, down, left, right) {
            if (up and direction!=3 and direction!=4 and direction!=5) starty = y;
            if (down and direction!=0 and direction!=1 and direction!=7) starty = y;
            if (left and direction!=5 and direction!=6 and direction!=7) startx = x;
            if (right and direction!=1 and direction!=2 and direction!=3) startx = x;
            if (up) {
                if (right) direction = 3;
                else if (left) direction = 5;
                else direction = 4;
            } else if (down) {
                if (right) direction = 1;
                else if (left) direction = 7;
                else direction = 0;
            } else {
                if (right) direction = 2;
                else if (left) direction = 6;
                else {
                    inmotion = false; 
                    return;
                }
            }
            inmotion = true;
        }
        
    </ui:box>
</vexi>