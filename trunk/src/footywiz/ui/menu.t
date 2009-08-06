<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns="vexi.pageflow" xmlns:role="org.vexi.lib.role">
    <role:selectlist />
    <view orient="vertical" vshrink="true">
        
        thisbox.v_content = thisbox;
        thisbox.v_container = true;
        
        thisbox.selected ++= function(v) {
            if (selected) selected.selected = false;
            cascade = v;
            if (selected) selected.selected = true;
        }
        
        thisbox.surface ++= function(v) {
            cascade = v;
            if (v) selectFirst();
        }
        
        var selectEntry = function(v) {
            cascade = v;
            selected = v;
        }
        
        thisbox.KeyPressed ++= function(v) {
            cascade = v;
            v_listgroup.selected.KeyPressed = v;
        }
        
    </view>
</vexi>