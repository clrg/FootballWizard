<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns="vexi.pageflow">
    <view orient="vertical">
        
        thisbox.selected ++= function(v) {
            if (selected) selected.selected = false;
            cascade = v;
            if (selected) selected.selected = true;
        }
        
        thisbox.surface ++= function(v) {
            cascade = v;
            if (v) selected = thisbox[0];
        }
        
        var selectEntry = function(v) {
            cascade = v;
            selected = v;
        }
        
        KeyPressed ++= function(v) {
            cascade = v;
            if (v == "up") {
                if (selected) {
                    var i = indexof(selected);
                    if (i-1>=0) selected = thisbox[i-1];
                } else selected = thisbox[numchildren-1];
            } else if (v == "down") {
                if (selected) {
                    var i = indexof(selected);
                    if (numchildren>i+1) selected = thisbox[i+1];
                } else selected = thisbox[0];
            }
        }
        
    </view>
</vexi>