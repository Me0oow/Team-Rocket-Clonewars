local PLUGIN = PLUGIN

PLUGIN.name = "Intro"
PLUGIN.description = "Adds an intro cutscene."
PLUGIN.author = "Preach"
PLUGIN.schema = "Any"
PLUGIN.version = 1.0

if CLIENT then
    function PLUGIN:InitializedConfig()
        // ix.option.Set("showIntro", true)
    end

    function PLUGIN:LoadIntro()
        vgui.Create("ixIntroStarwars")

        return true
    end
else
    resource.AddFile("materials/vgui/intro/background.jpg")
    resource.AddFile("materials/vgui/intro/loading_screen.png")
    resource.AddFile("materials/vgui/intro/logo.png")
    resource.AddFile("sounds/intro/big_impact.mp3")
    resource.AddFile("sounds/intro/war_horn.mp3")
    resource.AddFile("sounds/intro/impact_riser.mp3")
    resource.AddFile("sounds/intro/aggressive_riser.mp3")
    resource.AddFile("sounds/intro/depthbomb.mp3")
    resource.AddFile("sounds/intro/ambient.mp3")
end
