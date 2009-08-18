<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns="vexi.pageflow" xmlns:role="org.vexi.lib.role">
    <view orient="vertical" vshrink="true">
        
        var selectDown = function(index) {
            for (var i=index; numchildren>i; i++) {
                var c = thisbox[i];
                if (c.display and c.enabled) {
                    selected = thisbox[i];
                    return;
                }
            }
            for (var i=0; index>i; i++) {
                var c = thisbox[i];
                if (c.display and c.enabled) {
                    selected = thisbox[i];
                    return;
                }
            }
        }
        
        var selectUp = function(index) {
            for (var i=index; i>=0; i--) {
                var c = thisbox[i];
                if (c.display and c.enabled) {
                    selected = thisbox[i];
                    return;
                }
            }
            for (var i=numchildren-1; i>=index; i--) {
                var c = thisbox[i];
                if (c.display and c.enabled) {
                    selected = thisbox[i];
                    return;
                }
            }
        }
        
        var selectNext = function(v) {
            cascade = v;
            if (v) {
                if (!selected) selected = trapee;
            } else {
                var i = thisbox.indexof(trapee);
                selectDown(i+1);
            }
        }
        
        thisbox.selected ++= function(v) {
            if (selected) {
                selected.display --= selectNext;
                selected.selected = false;
            }
            cascade = v;
            if (selected)  {
                selected.display ++= selectNext;
                selected.selected = true;
            }
        }
        
        thisbox.surface ++= function(v) {
            cascade = v;
            if (v) selectDown(0);
        }
        
        thisbox.KeyPressed ++= function(v) {
            cascade = v;
            switch (v) {
            case "escape":
                event = "back";
                break;
            case "enter": case " ":
                if (selected) selected.action = true;
                break;
            case "up":
                if (!selected) selectUp(0);
                else selectUp(thisbox.indexof(selected)-1);
                break;
            case "down":
                if (!selected) selectDown(0);
                else selectDown(thisbox.indexof(selected)+1);
                break;
            }
        }
        
    </view>
</vexi>