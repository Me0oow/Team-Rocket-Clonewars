local PLUGIN = PLUGIN

PLUGIN.name = "Funk"
PLUGIN.author = "Preach"
PLUGIN.description = "Adds a funk system to the game."
PLUGIN.schema = "Any"
PLUGIN.version = 1.0

local CUSTOM_GROUP = true
local groups = {
    ["base"] = true,
}

local function getPlayersByGroup(client, group)
    local listeners = {}
    local data = {}
    local clientFraction = client:GetCharacter():GetFaction()

    if group == "base" then
        for _, v in ipairs(player.GetAll()) do
            if clientFraction == v:GetCharacter():GetFaction() then
                table.insert(listeners, v)
            end
        end

        data = {funkType = "Basis"}
    end

    return listeners, data
end

function PLUGIN:IsCharacterRecognized(character, id)
    return true
end

ix.command.Add("funk", {
    arguments = {
        ix.type.string,
        ix.type.text
    },
    argumentNames = {
        "Gruppe",
        "Nachricht"
    },
    OnRun = function(self, client, group, message)
        local listeners = {}

        if CUSTOM_GROUP then 
            ix.chat.Send(client, "funk", message, false, player.GetAll(), {funkType = group})
            return
        end

        if groups[group] then
            listeners, data = getPlayersByGroup(client, group)

            if #listeners == 0 then
                return "Es wurde keine Bataillon gefunden!"
            end
        else 
            local plyTarget = ix.util.FindPlayer(group)

            if not IsValid(plyTarget) then
                return "Es wurde kein Spieler gefunden!"
            end

            if plyTarget == client then
                return "Du kannst dir nicht selbst funken!"
            end

            listeners = { client, plyTarget }
            data = {funkType = plyTarget:GetCharacter():GetName() }
        end

        ix.chat.Send(client, "funk", message, false, listeners, data)
    end
})

ix.chat.Register("funk", {
    description = "@cmdFunk",
    indicator = "chatFunk",
    deadCanChat = false,
    OnChatAdd = function(self, speaker, text, bAnonymous, data)
        local color = ix.chat.classes.ic:GetColor(speaker)
        local speakerName = bAnonymous and "Jemand" or hook.Run("GetCharacterName", speaker) or speaker:Name()
        local group = data.funkType
        group = group:gsub("^%l", string.upper)

        local format = string.format("**%s an %s**", speakerName, group)
        chat.AddText(color, format, ": \"" .. ix.chat.Format(text) .. "\"")
    end,
})