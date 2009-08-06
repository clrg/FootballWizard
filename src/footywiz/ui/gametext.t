<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz">
    <ui:box height="16" shrink="true">
        
        var txt;
        
        thisbox.text ++= function() { return txt; }
        
        thisbox.text ++= function(v) {
            txt = v;
            var l = v.length;
            for (var i=0; l>i; i++) {
                var c = thisbox[i];
                if (c==null) {
                    c = .ui.gamechar(vexi.box);
                    thisbox[i] = c;
                }
                c.textchar = v.charAt(i);
            }
            // hide remaining characters
            var n = numchildren;
            for (var i=l; n>i; i++) thisbox[i].display = false;
            return;
        }
        
    </ui:box>    
</vexi>