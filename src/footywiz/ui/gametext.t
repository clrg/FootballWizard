<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz">
    <ui:box redirect=":$content" height="20" shrink="true">
        <ui:box width="1" />
        <ui:box id="content" />
        <ui:box width="2" />
        
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
                c.display = true;
                c.textchar = v.charAt(i);
            }
            // hide remaining characters
            var n = numchildren;
            for (var i=l; n>i; i++) thisbox[i].display = false;
            return;
        }
        
    </ui:box>    
</vexi>