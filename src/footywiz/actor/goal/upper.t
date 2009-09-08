<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz.actor.goal">
    <ui:box align="topleft" layout="place">
        <ui:box height="7" x="3">
            <nettingtop />
            <ui:box width="3" />
        </ui:box>
        <ui:box orient="vertical" x="3">
            <ui:box>
                <netting />
                <ui:box width="3" />
            </ui:box>
            <ui:box height="1" fill="#66ffffff" />
            <ui:box height="16" />
        </ui:box>
        <ui:box>
            <post />
            <ui:box />
            <post />
        </ui:box>
        <ui:box vshrink="true" x="3" y="7">
            <crossbar />
            <ui:box width="1" />
        </ui:box>
        
        thisbox.depth ++= function(v) {
            cascade = v;
        }
        
        thisbox.goalwidth ++= function(v) {
            cascade = v;
        }
        
        thisbox.goalheight ++= function(v) {
            cascade = v;
        }
        
    </ui:box>
</vexi>