<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz.ui">
    <menu redirect=":$content">
        <label text="Exit Football Wizard?" />
        <ui:box height="20" />
        <ui:box id="content" orient="vertical">
            <menuitem text="Yes" />
            <menuitem text="No" />
        </ui:box>
        
        $back.action ++= function(v) { event = "back"; return; }
        
    </menu>
</vexi>