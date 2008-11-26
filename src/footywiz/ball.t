<!-- Copyright 2008 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz">
    <ui:box align="bottomright" layout="place" width="8" height="10">
        <ui:box id="shadow" align="bottom" fill=":.image.ball_shadow" shrink="true" />
        <ui:box id="img" align="bottomleft" fill=":.image.ball" shrink="true" />
        
        thisbox.motionx = 0;
        thisbox.motiony = 0;
        
        var count = 0;
        thisbox.anim = function() {
            $img.x = -4*count;
            if ((++count)>3) count = 0;
        }
        
    </ui:box>
</vexi>