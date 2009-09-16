<vexi xmlns:ui="vexi://ui" xmlns="footywiz.ui" xmlns:vgl="vexi.vegalib">
    <ui:box align="topleft" layout="place" frametitle="A font made of boxes!">
        <gametext id="b" shrink="true" />
        $b.text = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        
        var s = new vgl.scheduler();
        s.fps ++= function(v) {
            vexi.log.info("fps: "+v);
            cascade = v;
        }
        s.limitFPS();
        
        var offx = 1;
        var offy = 1;
        /** update invoked by gamethread */
        thisbox.call = function(gotime, dtime) {
            if (0 >= $b.x) {
                offx = 1;
            } else if ($b.x + $b.width >= width) {
                offx = -1;
            }
            if (0 >= $b.y) {
                offy = 1;
            } else if ($b.y + $b.height >= height) {
                offy = -1;
            }
            $b.x = $b.x + offx;
            $b.y = $b.y + offy;
            return;
        }
        
        vexi.ui.frame = thisbox;
        
        s.run(thisbox);
        
    </ui:box>
</vexi>