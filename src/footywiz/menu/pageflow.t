<!-- Copyright 2009 WEBenableIT -- all rights reserved -->

<vexi xmlns:meta="vexi://meta" xmlns:menu="footywiz.menu" xmlns="vexi.pageflow">
    <meta:doc>
        <author>Charles Goodwin</author>
    </meta:doc>

    <pageflow startstate="mainmenu">
        <state name="mainmenu" view=":menu.mainmenu">
            <transition name="to_game" next="continue" />
            <transition name="to_newgame" next="newgame" />
            <transition name="to_profiles" next="profiles" />
            <transition name="to_controls" next="controls" />
            <transition name="to_options" next="options" />
            <transition name="to_credits" next="credits" />
            <transition name="to_quit" next="quit" />
        </state>
        <state name="continue" view=":menu.game">
            <transition name="back" next="mainmenu" />
        </state>
        <state name="newgame" view=":menu.newgame">
            <transition name="back" next="mainmenu" />
        </state>
        <state name="profiles" view=":menu.profiles">
            <transition name="back" next="mainmenu" />
        </state>
        <state name="controls" view=":menu.controls">
            <transition name="back" next="mainmenu" />
        </state>
        <state name="options" view=":menu.options">
            <transition name="back" next="mainmenu" />
        </state>
        <state name="credits" view=":menu.credits">
            <transition name="back" next="mainmenu" />
        </state>
        <state name="quit" view=":menu.quit">
            <transition name="back" next="mainmenu" />
        </state>
    </pageflow>
</vexi>
