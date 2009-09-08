<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz.actor.goal">
    <ui:box align="topleft" layout="place">
        <ui:box x="2" y="2">
            <ui:box orient="vertical">
                <netting />
                <ui:box height="1" />
            </ui:box>
            <ui:box width="2" />
        </ui:box>
        <ui:box orient="vertical">
            <ui:box>
                <post />
                <ui:box />
                <post />
            </ui:box>
            <ui:box align="bottom" height="14">
                <ui:box width="2" />
                <ui:box width="1" fill="#66ffffff" />
                <ui:box height="1" fill="#66ffffff" />
                <ui:box width="1" fill="#66ffffff" />
                <ui:box width="2" />
            </ui:box>
        </ui:box>
        <crossbar x="2" />
        
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