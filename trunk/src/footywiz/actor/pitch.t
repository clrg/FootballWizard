<!-- Copyright 2009 (c) - GNU GPLv3 -->

<vexi xmlns:ui="vexi://ui" xmlns="footywiz.ui"
    xmlns:layout="vexi.layout" xmlns:img="footywiz.image">
    <layout:pad align="topleft" fill=":img.grass" layout="layer" padding="30 64 50 64">
        <ui:box orient="vertical">
            <ui:box height="34" />
            <!-- top line / corners -->
            <ui:box id="setwidth" align="topleft" vshrink="true">
                <part image="point_topleft" />
                <ui:box align="top" height="2">
                    <part image="line_paint" hshrink="false" />
                </ui:box>
                <part image="point_topright" />
            </ui:box>
            <ui:box>
                <!-- left line -->
                <ui:box width="2">
                    <part image="line_paint" vshrink="false" />
                </ui:box>
                <ui:box layout="layer" vshrink="true">
                    <!-- middle line -->
                    <ui:box>
		                <ui:box id="setheight" height="2">
		                    <part image="line_paint" hshrink="false" />
		                </ui:box>
		                <part image="point_center" />
		                <ui:box height="2">
		                    <part image="line_paint" hshrink="false" />
		                </ui:box>
                    </ui:box>
                    <!-- center circle -->
                    <part image="circle_small" />
                </ui:box>
                <!-- right line -->
                <ui:box width="2">
                    <part image="line_paint" vshrink="false" />
                </ui:box>
            </ui:box>
            <!-- bottom line -->
            <ui:box align="bottom" vshrink="true">
                <part image="point_bottomleft" />
                <ui:box height="2">
                    <part image="line_paint" hshrink="false" />
                </ui:box>
                <part image="point_bottomright" />
            </ui:box>
            <ui:box height="14" />
        </ui:box>
        <ui:box orient="vertical">
            <ui:box height="34" />
            <!-- top penalty area -->
            <ui:box height="99" align="bottom">
                <part image="circle_small" />
            </ui:box>
            <ui:box />
            <!-- bottom penalty area -->
            <ui:box height="99" align="top">
                <part image="circle_small" />
            </ui:box>
            <ui:box height="14" />
        </ui:box>
        <!-- top goal -->
        <ui:box align="top">
            <ui:box align="topleft" layout="layer" shrink="true">
                <part image="goal_upper_net" x="2" y="0" />
                <part image="goal_upper_frame" />
                <part image="goal_upper_roof" x="2" y="0" />
            </ui:box>
        </ui:box>
        <!-- bottom goal -->
        <ui:box align="bottom">
            <ui:box align="top" layout="layer" shrink="true">
                <part image="goal_lower_frame" />
                <ui:box orient="vertical" shrink="true">
                    <ui:box height="2" />
                    <part image="goal_lower_net" />
                </ui:box>
            </ui:box>
        </ui:box>
        
        thisbox.pitchwidth ++= function(v) {
            cascade = v;
            width = 512 + 128*v;
        }
        
        thisbox.pitchheight ++= function(v) {
            cascade = v;
            height = 768 + 128*v;
        }
        
    </layout:pad>
</vexi>