local MARGIN = 5
local x = 15
local y = 15

local lastWidth = 0
local lastHeight = 0

local materials = materials or {
    credit = Material("the_hud/credit.png"),
    weapon = Material("the_hud/weapon.png"),
    red_symbol = Material("the_hud/red_symbol.png")
}

local function getRank(char)
    local rankTable = ix.faction.Get(char:GetFaction()).ranks

    if rankTable then
        return rankTable[char:GetRank()].longname
    else
        return ""
    end
end

local function drawText(data)
    local width, height = draw.Text({
        text = data.text,
        font = data.font,
        pos = {x, y},
        color = data.color
    })

    lastWidth = width
    lastHeight = height

    y = y + height + MARGIN
end

local function drawInfo(char)
    y = 15

    drawText({
        text = "lolxd nani nevermind",
        font = "ix.hud.glyph",
        color = Color(218, 189, 31, 255)
    })

    drawText({
        text = char:GetName(),
        font = "ix.hud.default",
        color = Color(255, 255, 255, 255)
    })

    drawText({
        text = "priorytety",
        font = "ix.hud.glyph",
        color = Color(31, 174, 218, 255)
    })

    drawText({
        text = getRank(char),
        font = "ix.hud.default",
        color = Color(255, 255, 255, 255)
    })
end

local function drawCredit(char)
    local x = lastWidth + 40
    local y = y - lastHeight - MARGIN - 2

    surface.SetDrawColor(255, 255, 255, 255)
    surface.SetMaterial(materials.credit)
    surface.DrawTexturedRect(x, y, 12, 23)

    x = x + 18
    y = y + 2

    draw.Text({
        text = string.format("%.3f", char:GetMoney()),
        font = "ix.hud.credit",
        pos = {x, y},
        color = Color(255, 255, 255, 255)
    })
end

function PLUGIN:HUDPaint()
    local char = LocalPlayer():GetCharacter()

    if ix.gui.menu and IsValid(ix.gui.menu) then return end
    if not char then return end

    drawInfo(char)
    drawCredit(char)
end

function PLUGIN:CanDrawAmmoHUD(weapon)
    if weapon.DrawAmmo == false then return false end

    local clip = weapon:Clip1()
    local clipMax = weapon:GetMaxClip1()
    local name = weapon:GetPrintName()
    local count = LocalPlayer():GetAmmoCount(weapon:GetPrimaryAmmoType())
    local x, y = ScrW() - 20, ScrH() - 97

    local width, height = draw.Text({
        text = string.format("%i/%i", clip, count),
        font = "ix.hud.weapon",
        pos = {x, y},
        xalign = TEXT_ALIGN_RIGHT,
        yalign = TEXT_ALIGN_CENTER,
        color = Color(255, 255, 255, 255)
    })

    x = x - width - 8 - height

    surface.SetDrawColor(255, 255, 255, 255)
    surface.SetMaterial(materials.red_symbol)
    surface.DrawTexturedRect(x, y - height / 2, height, height)

    x, y = math.min(ScrW() - 300, x - 150), y - 18

    surface.SetMaterial(materials.weapon)
    surface.DrawTexturedRect(x, y, 105, 40)

    y = y + 55

    surface.DrawRect(x, y, ScrW() - x - 20, 1)

    y = y + 10

    _, height = draw.Text({
        text = "weapon name",
        font = "ix.hud.glyph",
        pos = {x, y},
        color = Color(255, 255, 255, 255)
    })

    y = y + height + 5

    draw.Text({
        text = name,
        font = "ix.hud.weapon",
        pos = {x, y},
        color = Color(255, 255, 255, 255)
    })

    return false
end
