<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz">
    <ui:box shrink="true">
        <ui:box width="1" />
        <ui:box>
            <ui:box height="1" />
            <ui:box id="fore" textcolor="white" />
        </ui:box>
        
        thisbox.fore = $fore;
        
        fontsize  ++= static.textWrite;
        text      ++= static.textWrite;
        textcolor ++= static.textcolorWrite;
        
    </ui:box>
    
    static.textWrite = function(v) { cascade = v; trapee.fore[trapname] = v; }
    static.textcolorWrite = function(v) { trapee.fore[trapname] = v; return; }
    
</vexi>