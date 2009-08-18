<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns:meta="vexi://meta" xmlns:pf="vexi.pageflow" xmlns="footywiz">
    <meta:doc>
        <author>Charles Goodwin</author>
    </meta:doc>
    
    <ui:box orient="vertical">
        <ui:box height="75" />
        <ui:box fill=":.image.footballwizard" shrink="true" />
        <ui:box height="40" />
        <pf:autorun id="pf" pageflow=":.menu.pageflow" />
        <ui:box />
        
        thisbox.surface ++= function(v) {
            // REMARK: footywiz.menu is never removed from the surface
            // so we do not have to worry about trap tidy up here
            if (v) {
                v.active ++= function(v) { cascade = v; display = !v; }
            }
            cascade = v;
        }
        
        thisbox.KeyPressed ++= function(v) {
            if ($pf[0]) $pf[0].KeyPressed = v;
            return;
        }
        
    </ui:box>
</vexi>