local PLUGIN = PLUGIN

PLUGIN.name = "NPC Drops"
PLUGIN.description = "NPCs drop items when killed."
PLUGIN.author = "Riggs"
PLUGIN.schema = "Any"
PLUGIN.license = [[
Copyright 2024 Riggs Mackay

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
]]

// please edit the config with your own items & npcs

PLUGIN.config = {
    ["npc_b1base"] = {
        rarity = 0,
        randomItems = true,
        items = {
            "teile",
            "Droiden Teile",
      
        },
    },
    ["npc_b1baseaat"] = {
        rarity = 0,
        randomItems = true,
        items = {
            "teile",
        },
    },
    ["npc_b1camo"] = {
        rarity = 0,
        randomItems = true,
        items = {
            "teile",
        },
    },

    ["npc_b1basecom"] = {
        rarity = 0,
        randomItems = true,
        items = {
            "teile",
        },
    },

    ["npc_b1basegeo"] = {
        rarity = 0,
        randomItems = true,
        items = {
            "teile",
        },
    },

    ["npc_b1rocket"] = {
        rarity = 0,
        randomItems = true,
        items = {
            "teile",
        },
    },
}

ix.util.Include("sv_plugin.lua")