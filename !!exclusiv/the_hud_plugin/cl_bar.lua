local BAR_HEIGHT = 10

local PANEL = {}

AccessorFunc(PANEL, "padding", "Padding", FORCE_NUMBER)

function PANEL:Init()
	self:SetSize(ScrW() * 0.15, ScrH())
	self:SetPos(10, 105)
	self:ParentToHUD()

	self.bars = {}
	self.padding = 2

	-- add bars that were registered before manager creation
	for _, v in ipairs(ix.bar.list) do
		v.panel = self:AddBar(v.index, v.color, v.priority)
	end

	-- hook.Run("BarCreated")
end

function PANEL:GetAll()
	return self.bars
end

function PANEL:Clear()
	for k, v in ipairs(self.bars) do
		v:Remove()

		table.remove(self.bars, k)
	end
end

function PANEL:AddBar(index, color, priority)
	local panel = self:Add("ixInfoBar")
	panel:SetSize(self:GetWide(), BAR_HEIGHT)
	-- panel:SetVisible(false)
	panel:SetVisible(true)
	panel:SetID(index)
	panel:SetColor(color)
	panel:SetPriority(priority)

	self.bars[#self.bars + 1] = panel
	self:Sort()

	return panel
end

function PANEL:RemoveBar(panel)
	local toRemove

	for k, v in ipairs(self.bars) do
		if (v == panel) then
			toRemove = k
			break
		end
	end

	if (toRemove) then
		table.remove(self.bars, toRemove)

		-- Decrease index value for the next bars
		for i = toRemove, #self.bars do
			ix.bar.list[i].index = i
			self.bars[i]:SetID(i)
		end
	end

	panel:Remove()
	self:Sort()
end

-- sort bars by priority
function PANEL:Sort()
	table.sort(self.bars, function(a, b)
		return a:GetPriority() < b:GetPriority()
	end)
end

-- update target Y positions
function PANEL:Organize()
	local currentX = 0
	local currentY = 0

	for _, v in ipairs(self.bars) do
		-- if (!v:IsVisible()) then
			-- continue
		-- end

		v:SetPos(currentX - (v.offsetX or 0), currentY - (v.offsetY or 0))

		currentX = currentX + 4 - (v.offsetX or 0)
		currentY = currentY + self.padding + v:GetTall() - (v.offsetY or 0)
	end

	self:SetSize(self:GetWide(), currentY)
end

function PANEL:Think()
	local menu = (IsValid(ix.gui.characterMenu) and !ix.gui.characterMenu:IsClosing()) and ix.gui.characterMenu
		or IsValid(ix.gui.menu) and ix.gui.menu
	local fraction = menu and 1 - menu.currentAlpha / 255 or 1

	self:SetAlpha(255 * fraction)

	-- don't update bars when not visible
	if (fraction == 0) then
		return
	end

	local curTime = CurTime()
	local bShouldHide = hook.Run("ShouldHideBars")
	local bAlwaysShow = ix.option.Get("alwaysShowBars", false)

	for _, v in ipairs(self.bars) do
		local info = ix.bar.list[v:GetID()]
		local realValue, barText = info.GetValue()

		if (bShouldHide or realValue == false) then
			-- v:SetVisible(false)
			continue
		end

		if (v:GetDelta() != realValue) then
			v:SetLifetime(curTime + 5)
		end

		if (v:GetLifetime() < curTime and !info.visible and !bAlwaysShow and !hook.Run("ShouldBarDraw", info)) then
			-- v:SetVisible(false)
			continue
		end

		v:SetVisible(true)
		v:SetValue(realValue)
		v:SetText(isstring(barText) and barText or "")
	end

	self:Organize()
end

function PANEL:OnRemove()
	self:Clear()
end

vgui.Register("ixInfoBarManager", PANEL, "Panel")

PANEL = {}

AccessorFunc(PANEL, "index", "ID", FORCE_NUMBER)
AccessorFunc(PANEL, "color", "Color")
AccessorFunc(PANEL, "priority", "Priority", FORCE_NUMBER)
AccessorFunc(PANEL, "value", "Value", FORCE_NUMBER)
AccessorFunc(PANEL, "delta", "Delta", FORCE_NUMBER)
AccessorFunc(PANEL, "lifetime", "Lifetime", FORCE_NUMBER)

function PANEL:Init()
	self.value = 0
	self.delta = 0
	self.lifetime = 0

	self.bar = self:Add("DPanel")
	self.bar:SetPaintedManually(true)
	self.bar:Dock(FILL)
	self.bar:DockMargin(2, 2, 2, 2)
	self.bar.Paint = function(this, width, height)
		width = width * math.min(self.delta, 1)

		derma.SkinFunc("PaintInfoBar", self, width, height, self.color)
	end

	self.label = self:Add("DLabel")
	self.label:SetFont("ixSmallFont")
	self.label:SetContentAlignment(5)
	self.label:SetText("")
	self.label:SetTextColor(Color(240, 240, 240))
	self.label:SetExpensiveShadow(2, Color(20, 20, 20))
	self.label:SetPaintedManually(true)
	self.label:SizeToContents()
	self.label:Dock(FILL)
end

function PANEL:SetText(text)
	self.label:SetText(text)
	self.label:SizeToContents()
end

function PANEL:Think()
	self.delta = math.Approach(self.delta, self.value, FrameTime())
end

function PANEL:Paint(width, height)
	derma.SkinFunc("PaintInfoBarBackground", self, width, height)
end

vgui.Register("ixInfoBar", PANEL, "Panel")

if (IsValid(ix.gui.bars)) then
	ix.gui.bars:Remove()
	ix.gui.bars = vgui.Create("ixInfoBarManager")
end

function ix.bar.Add(getValue, color, priority, identifier, callback)
	if (identifier) then
		ix.bar.Remove(identifier)
	end

	local index = #ix.bar.list + 1

	color = color or Color(math.random(150, 255), math.random(150, 255), math.random(150, 255))
	priority = priority or index

	ix.bar.list[index] = {
		index = index,
		color = color,
		priority = priority,
		GetValue = getValue,
		identifier = identifier,
		panel = IsValid(ix.gui.bars) and ix.gui.bars:AddBar(index, color, priority)
	}

	if (callback) then
		callback(ix.bar.list[index])
	end

	return priority
end

local materials = materials or {
	health = Material("the_hud/health_bar.png"),
	empty_health = Material("the_hud/empty_health_bar.png"),
	decoration = Material("the_hud/armor_bar.png"),
	stamina = Material("the_hud/hunger_bar.png"),
	armor = Material("the_hud/thirsty_bar.png")
}

function PLUGIN:CharacterLoaded()
	ix.bar.Add(function()
			return 1
		end, Color(200, 50, 40), nil, "decoration")

	local bar = ix.bar.Get("decoration")
	bar.priority = 100
	bar.panel:SetPriority(bar.priority)
	bar.panel:SetZPos(2)
	bar.panel.Paint = function(_, w, h)
		surface.SetDrawColor(255, 255, 255, 255)
		surface.SetMaterial(materials.decoration)
		surface.DrawTexturedRectUV(0, 0, w, h, 0, 0, 1, 1)
	end

	bar = ix.bar.Get("health")
	bar.priority = 200
	bar.panel:SetPriority(bar.priority)
	bar.panel:SetZPos(1)
	bar.panel.Paint = function(self, w, h)
		local value = self.delta

		surface.SetDrawColor(255, 255, 255, 255)
		surface.SetMaterial(materials.empty_health)
		surface.DrawTexturedRect(0, 0, w, h)

		surface.SetMaterial(materials.health)
		surface.DrawTexturedRectUV(0, 2, w * value, h - 2, 0, 0, value, 1)
	end

	local width, height = bar.panel:GetSize()
	bar.panel:SetSize(width, height + 5)

	bar = ix.bar.Get("stm")
	bar.priority = 300
	bar.panel:SetPriority(bar.priority)
	bar.panel:SetZPos(2)
	bar.panel.Paint = function(self, w, h)
		local value = self.delta

		surface.SetDrawColor(255, 255, 255, 255)
		surface.SetMaterial(materials.stamina)
		surface.DrawTexturedRectUV(0, 0, w * value, h, 0, 0, value, 1)
	end

	bar.panel.offsetY = 8

	bar = ix.bar.Get("armor")
	bar.priority = 400
	bar.panel:SetPriority(bar.priority)
	bar.panel:SetZPos(3)
	bar.panel.Paint = function(self, w, h)
		local value = self.delta

		surface.SetDrawColor(255, 255, 255, 255)
		surface.SetMaterial(materials.armor)
		surface.DrawTexturedRectUV(0, 0, w * value, h, 0, 0, value, 1)
	end

	width, height = bar.panel:GetSize()
	bar.panel:SetSize(width + 6, height)

	bar.panel.offsetX = 2
	bar.panel.offsetY = 5

	if (ix.gui.bars) then
		ix.gui.bars:Sort()
	end
end