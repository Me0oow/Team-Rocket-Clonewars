local PLUGIN = PLUGIN

PLUGIN.name = "Exercises"
PLUGIN.author = "Naast (apathyisdeath)"
PLUGIN.description = "Does what it says."

ix.util.Include("cl_plugin.lua")
ix.util.Include("sv_plugin.lua")
ix.util.IncludeDir(PLUGIN.folder .. "/meta", true)

ix.config.Add("exerciseSuccessSound", "everfall/republiccommando/int_gen_button_04.wav", "The sound played when QTE is successful.", nil, {
    category = "Exercises"
})

ix.config.Add("sprintAttributePoints", 0.01, "How many attribute points does sprinting give?", nil, {
    data = {min = 0, max = 10, decimals = 3},
    category = "Exercises"
})

ix.lang.AddTable("english", {
    ePressButton = "drück",
    eWaitUntilStart = "warte bis die übung startet",
    eLeave = "drück [leertaste] zum stoppen",
})