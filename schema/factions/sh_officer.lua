
-- You can define factions in the factions/ folder. You need to have at least one faction that is the default faction - i.e the
-- faction that will always be available without any whitelists and etc.

FACTION.name = "Navy"
FACTION.description = "Offiziere verbessern die Kampfkraft einer Einheit, indem sie ihren Schützlingen Anweisungen erteilen. Indem sie die Einheit stärken und ihre Fähigkeiten einsetzen, um die Siegchancen zu erhöhen."
FACTION.isDefault = false
FACTION.color = Color(100, 60, 60)
FACTION.models = {
    "models/cadet_fin/cadet_fin.mdl"
}


FACTION.charImage = "materials/karman/ui/officer2.png"
FACTION.backgroundMusic = "karman/kamino2.mp3"

function FACTION:OnSpawn(client)
    client:SetMaxHealth(200)
    client:SetHealth(150)
end

FACTION.pay = 10

FACTION.ranks = {

    [1] =  {
        ["shortname"] = "CW",
        ["longname"] ="Crewman",
       -- ["img"] = "starwars_content/derma/custom/rec.png",
    },
    [2] =  {
        ["shortname"] = "WOFC",
        ["longname"] ="Warrant Officier",
     --   ["img"] = "starwars_content/derma/custom/trp.png",
    },
    [3] =  {
        ["shortname"] = "CWO",
        ["longname"] ="Chief Warrant Officer",
       -- ["img"] = "starwars_content/derma/custom/trp.png",
    },
    [4] =  {
        ["shortname"] = "SCWO",
        ["longname"] ="Senior Chief Warrant Officer",
        --["img"] = "starwars_content/derma/custom/trp.png",
    },
    [5] =  {
        ["shortname"] = "PO",
        ["longname"] ="Petty Officer",
        --["img"] = "starwars_content/derma/custom/trp.png",
    },
    [6] =  {
        ["shortname"] = "SCPO",
        ["longname"] ="Senior Chief Petty Officer",
        --["img"] = "starwars_content/derma/custom/cpl.png",
        ["canPromote"] = true
    },
    [7] =  {
        ["shortname"] = "MP",
        ["longname"] ="Midshipman",
        --["img"] = "starwars_content/derma/custom/lt.png",
        ["canPromote"] = true
    },
    [8] =  { 
        ["shortname"] = "ES",
        ["longname"] ="Ensign",
        --["img"] = "starwars_content/derma/custom/lt.png",
        ["canPromote"] = true
        },
    [9] =  { 
        ["shortname"] = "LT",
        ["longname"] ="Lieutenant",
        --  ["img"] = "starwars_content/derma/custom/lt.png",
        ["canPromote"] = true
        },

    [10] =  { 
        ["shortname"] = "LTCM",
        ["longname"] ="Lieutenant Commander",
        --    ["img"] = "starwars_content/derma/custom/lt.png",
    ["canPromote"] = true
    },
    [11] =  {
        ["shortname"] = "CPT",
        ["longname"] ="Captain",
        --["img"] = "starwars_content/derma/custom/cpt.png",
        ["canPromote"] = true
    },
    [12] =  {
        ["shortname"] = "CL",
        ["longname"] ="Colonel",
        --["img"] = "starwars_content/derma/custom/mjr.png",
        ["canPromote"] = true
    },
    [13] =  {
        ["shortname"] = "CMDO",
        ["longname"] ="Commodore",
        --["img"] = "starwars_content/derma/custom/mjr.png",
        ["canPromote"] = true
    },    
    [14] =  {
        ["shortname"] = "ADM",
        ["longname"] ="Admiral",
        --["img"] = "starwars_content/derma/custom/jgen.png",
        ["canPromote"] = true
    },


}

-- You should define a global variable for this faction's index for easy access wherever you need. FACTION.index is
-- automatically set, so you can simply assign the value.

-- Note that the player's team will also have the same value as their current character's faction index. This means you can use
-- client:Team() == FACTION_CITIZEN to compare the faction of the player's current character.
FACTION_NAVY = FACTION.index
