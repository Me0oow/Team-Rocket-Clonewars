local PLUGIN = PLUGIN

PLUGIN.name = "HUD"
PLUGIN.author = "xemon"
PLUGIN.description = "Replaces the default HUD."

ix.util.Include("cl_fonts.lua")
ix.util.Include("cl_hud.lua")
ix.util.Include("cl_bar.lua")

if SERVER then
    resource.AddFile("resource/fonts/aurebeshaf-legends.ttf")
    resource.AddFile("resource/fonts/fontsfree-net-prospec-light-1_2.ttf")

    resource.AddFile("materials/the_hud/armor_bar.png")
    resource.AddFile("materials/the_hud/health_bar.png")
    resource.AddFile("materials/the_hud/thirsty_bar.png")
    resource.AddFile("materials/the_hud/empty_health_bar.png")
    resource.AddFile("materials/the_hud/hunger_bar.png")
    resource.AddFile("materials/the_hud/credit.png")
    resource.AddFile("materials/the_hud/red_symbol.png")
    resource.AddFile("materials/the_hud/weapon.png")
end