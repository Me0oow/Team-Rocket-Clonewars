
-- You can define factions in the factions/ folder. You need to have at least one faction that is the default faction - i.e the
-- faction that will always be available without any whitelists and etc.

FACTION.name = "Jedi Orden"
FACTION.description = "Der Jedi Orden."
FACTION.isDefault = false
FACTION.color = Color(100, 60, 60)
FACTION.models = {
    "models/cadet_fin/cadet_fin.mdl"
}
FACTION.pay = 10

FACTION.charImage = "materials/karman/ui/medic2.png"
FACTION.backgroundMusic = "karman/kamino2.mp3"

function FACTION:OnSpawn(client)
    client:SetMaxHealth(600)
    client:SetHealth(600)
end

FACTION.ranks = {

    [1] =  {
        ["shortname"] = "JL",
        ["longname"] ="Jungerling",
       -- ["img"] = "materials/jojo/501.png" Bilder und Texte überschneiden mit dem "ranksystem" aufgeschoben bis später
    },
    [2] =  {
        ["shortname"] = "PW",
        ["longname"] ="Padawan",
      --  ["img"] = "starwars_content/derma/custom/trp.png"
    },
    [3] =  {
        ["shortname"] = "JR",
        ["longname"] ="Jedi-Ritter",
       -- ["img"] = "starwars_content/derma/custom/trp.png"
    },
    [4] =  {
        ["shortname"] = "JM",
        ["longname"] ="Jedi Meister",
       -- ["img"] = "starwars_content/derma/custom/trp.png"
    },
    [5] =  {
        ["shortname"] = "RAT",
        ["longname"] ="Mitglied des Rates",
       -- ["img"] = "starwars_content/derma/custom/cpl.png"
       ["canPromote"] = true
    },
    [6] =  {
        ["shortname"] = "GM",
        ["longname"] ="Großmeister",
       -- ["img"] = "starwars_content/derma/custom/cpl.png"
       ["canPromote"] = true
    },

    
      

}

-- You should define a global variable for this faction's index for easy access wherever you need. FACTION.index is
-- automatically set, so you can simply assign the value.

-- Note that the player's team will also have the same value as their current character's faction index. This means you can use
-- client:Team() == FACTION_CITIZEN to compare the faction of the player's current character.
FACTION_JEDI = FACTION.index
