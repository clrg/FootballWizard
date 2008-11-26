<!-- Copyright 2008 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz">
    <ui:box>
        <ui:box width="1" />
        <ui:box>
            <ui:box height="1" />
            <ui:box id="fore" textcolor="white" />
        </ui:box>
        
        text ++= function(v) { cascade = v; $fore.text = v; }
        
    </ui:box>
</vexi>