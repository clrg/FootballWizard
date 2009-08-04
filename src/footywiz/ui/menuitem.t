<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns:role="org.vexi.lib.role" xmlns="footywiz">
    <role:clickable />
    <ui:box height="32" shrink="true">
        <ui:box align="left" width="20">
            <actor.ball id="leftball" display="false" />
        </ui:box>
        <ui.label id="text" fontsize="16" />
        <ui:box align="right" width="20">
            <actor.ball id="rightball" display="false" />
        </ui:box>
        
        active ++= function(v) { $text.textcolor = "yellow"; return; }
        hover ++= function(v) { $text.textcolor = "red"; return; }
        normal ++= function(v) { $text.textcolor = "white"; return; }
        
        selected ++= function(v) { cascade = v; $leftball.display = v; $rightball.display = v; }
        
        text ++= function(v) { $text.text = v; return; }
        
        fontsize ++= function(v) { cascade = v; height = 2*v; }
        
    </ui:box>
</vexi>