<!-- Copyright 2008 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz" xmlns:layout="vexi.layout">
    <layout:pad fill=":.image.grass" layout="layer" padding="40">
        <ui:box orient="vertical">
            <ui:box height="34" />
            <ui:box id="setwidth" vshrink="true">
                <part image="point_topleft" />
                <ui:box align="top" height="2">
                    <part image="line_paint" hshrink="false" />
                </ui:box>
                <part image="point_topright" />
            </ui:box>
            <ui:box>
                <ui:box width="2">
                    <part image="line_paint" vshrink="false" />
                </ui:box>
                <ui:box id="setheight" height="2">
                    <part image="line_paint" hshrink="false" />
                </ui:box>
                <part image="point_center" align="center" />
                <ui:box height="2">
                    <part image="line_paint" hshrink="false" />
                </ui:box>
                <ui:box width="2">
                    <part image="line_paint" vshrink="false" />
                </ui:box>
            </ui:box>
            <ui:box vshrink="true">
                <part image="point_bottomleft" />
                <ui:box align="bottom" height="2">
                    <part image="line_paint" hshrink="false" />
                </ui:box>
                <part image="point_bottomright" />
            </ui:box>
            <ui:box height="10" />
        </ui:box>
        <ui:box orient="vertical">
            <ui:box height="34" />
            <ui:box height="99" align="top">
                <part image="circle_small" align="bottom" />
            </ui:box>
            <ui:box />
            <part image="circle_small" align="center" />
            <ui:box />
            <ui:box height="99" align="bottom">
                <part image="circle_small" align="top" />
            </ui:box>
            <ui:box height="10" />
        </ui:box>
        <ui:box align="top" layout="layer" shrink="true">
            <part image="goal_upper_net" x="2" y="0" />
            <part image="goal_upper_frame" x="0" y="0" />
            <part image="goal_upper_roof" x="2" y="0" />
        </ui:box>
        <ui:box align="bottom" layout="layer" shrink="true">
            <part image="goal_lower_frame" x="0" y="0" />
            <part image="goal_lower_net" x="2" y="2" />
        </ui:box>
        
        thisbox.pitchwidth ++= function(v) {
            cascade = v;
            $setwidth = v/2;
        }
        
        thisbox.pitchheight ++= function(v) {
            cascade = v;
            $setheight = v/2;
        }
        
    </layout:pad>
</vexi>