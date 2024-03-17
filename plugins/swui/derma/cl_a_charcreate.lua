
local PLUGIN = PLUGIN

local ScrW = ScrW
local ScrH = ScrH
local function _s(scale)
    return (scale / 1080) * ScrH()
end

local padding = ScreenScale(32)

DEFINE_BASECLASS("ixCharMenuPanel")


local color_white = Color(255, 255, 255, 255)
local color_grey = Color(140, 140, 140, 255)
local color_black = Color(0, 0, 0, 255)


local matMainInfoBG = Material("materials/characterpanel.png", "smooth")


local matCenterGrad = Material("vgui/gradvr", "")
local matCenterGradClr = Color(255, 255, 255, 150)

local matBackground = Material("materials/modificationmenu.png", "smooth")

local defaultFactionImage = "materials/factionsimages/faction_citizen.png"
local matChooseFactionBackground = Material("materials/karman/menu3.png", "smooth")


local CreateCachedFont = PLUGIN.CreateCachedFont



local surface_SetFont 		= surface.SetFont
local surface_GetTextSize 	= surface.GetTextSize
local string_Explode 		= string.Explode
local ipairs 				= ipairs

local function stringWrap(font, text, width)
	surface_SetFont(font)
		
	local sw = surface_GetTextSize(' ')
	local ret = {}
		
	local w = 0
	local s = ''

	local t = string_Explode('\n', text)
	for i = 1, #t do
		local t2 = string_Explode(' ', t[i], false)
		for i2 = 1, #t2 do
			local neww = surface_GetTextSize(t2[i2])
				
			if (w + neww >= width) then
				ret[#ret + 1] = s
				w = neww + sw
				s = t2[i2] .. ' '
			else
				s = s .. t2[i2] .. ' '
				w = w + neww + sw
			end
		end
		ret[#ret + 1] = s
		w = 0
		s = ''
	end
		
	if (s ~= '') then
		ret[#ret + 1] = s
	end

	return ret
end

















local PANEL = {}

function PANEL:Init()
	self.percentageWidth = 0
	self.attributeFont = CreateCachedFont("Abel [RUS by Daymarius]", _s(22), 25)
	self.canChangeHooks = {}


	self.attributeData = {
		niceName = "ERROR",
		max = 1,
		value = 0
	}

	self.slider = vgui.Create("EditablePanel", self)
	self.slider:SetCursor("hand")
	self.slider.OnMousePressed = function(s, keyCode)
		if not s:IsHovered() or keyCode ~= MOUSE_LEFT then return end
		s:MouseCapture(true)
		s.isMouseDown = true
	end
	self.slider.OnMouseReleased = function(s, keyCode)
		if keyCode ~= MOUSE_LEFT then return end
		s:MouseCapture(false)
		s.isMouseDown = false
	end
	self.slider.Paint = function(s,w,h)
		if s.isMouseDown then
			local x = select(1, s:LocalCursorPos())

			local newValue = math.Round((x/w)*self.attributeData.max)

			self:ChangeValue( newValue - self.attributeData.value )
		end

		surface.SetDrawColor(color_grey)
		surface.DrawRect(0, 0, self.percentageWidth*w, h) --тута удалил
	end


	self.subtractBut = vgui.Create("DButton", self)
	self.subtractBut:SetText("")
	self.subtractBut.Paint = function(s,w,h)
		surface.SetDrawColor(color_white)
		surface.DrawOutlinedRect(0, 0, w, h) --тута удалил
	end
	self.subtractBut.DoClick = function(s)
		self:ChangeValue(-1)
	end

	self.addBut = vgui.Create("DButton",self)
	self.addBut:SetText("")
	self.addBut.Paint = function(s,w,h)
		surface.SetDrawColor(color_white)
		surface.DrawOutlinedRect(0, 0, w, h) --тута удалил
	end
	self.addBut.DoClick = function(s)
		self:ChangeValue(1)
	end
end

function PANEL:RegisterAttribute(niceName, max)
	self.attributeData = {
		niceName = niceName,
		max = max,
		value = 0
	}

	surface.SetFont(self.attributeFont)
	local textW = select(1, surface.GetTextSize(niceName))


	self.leftMargin = textW + 10

	local i = 0
	while (self:GetX() - self.leftMargin - 5) < 0 do
		i = i + 1
		self.attributeFont = CreateCachedFont("Abel [RUS by Daymarius]", _s(22) - i, 1000)
		surface.SetFont(self.attributeFont)

		self.leftMargin = select(1, surface.GetTextSize(niceName)) + 10
	end

	self:SetWide(self:GetWide() + self.leftMargin)
	self:SetPos(self:GetX() - self.leftMargin, self:GetY())
end

function PANEL:ChangeValue(valueChange)
	local canChange = self:CanChange(valueChange)
	if not canChange then return end

	valueChange = isnumber(canChange) and canChange or valueChange

	self.attributeData.value = self.attributeData.value + valueChange

	self.percentageWidth = self.attributeData.value/self.attributeData.max

	self:OnChange(self.attributeData.value, valueChange)
end

function PANEL:HookCanChange(func)
	table.insert(self.canChangeHooks, func)
end

function PANEL:CanChange(valueChange)
	if not isnumber(valueChange) then return false end

	if (self.attributeData.value + valueChange) > self.attributeData.max then
		return false
	end

	if (self.attributeData.value + valueChange) < 0 then
		return false
	end

	for i = 1, #self.canChangeHooks do
		local canChange = self.canChangeHooks[i](valueChange)
		if canChange == false or isnumber(canChange) then
			return canChange
		end
	end

	return true
end

function PANEL:OnChange(value)
end


function PANEL:PerformLayout(w, h)
	self.slider:SetPos(h + self.leftMargin, 1)
	self.slider:SetSize(w - h*16 - self.leftMargin, h - 2)

	self.subtractBut:SetPos(self.leftMargin, 0)
	self.subtractBut:SetSize(h, h)

	self.addBut:SetPos(w - h*15, 0)
	self.addBut:SetSize(h, h)
end

function PANEL:Paint(w, h)
	surface.SetDrawColor(color_white)
	--surface.DrawOutlinedRect(self.leftMargin, 0, w - self.leftMargin, h) --тута удалил

	--draw.SimpleText(self.attributeData.niceName or "ERROR", self.attributeFont, 0, h*0.5, color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
end

vgui.Register("customCharAtribSlider", PANEL, "EditablePanel")
















local PANEL = {}


function PANEL:Init()
	CreateCachedFont = PLUGIN.CreateCachedFont

	
	self:OpenFaction()
	//self:OpenDescription()
end

function PANEL:PlayFactionSound(factionTbl)
	//print("introSound", SysTime())

	if self.introSound then
		self.introSound:ChangeVolume(0, 0)
		self.introSound:Stop()
		self.introSound = nil
	end

	if game.GetWorld() ~= NULL then
		self.introSound = CreateSound(game.GetWorld(), factionTbl and factionTbl.backgroundMusic or PLUGIN.DefaultBackgroundMusic)
	else
		hook.Add("Think", "ix_cancerworldspawn", function()
			if game.GetWorld() == NULL then return end
			hook.Remove("Think", "ix_cancerworldspawn")
			self.introSound = CreateSound(game.GetWorld(), factionTbl and factionTbl.backgroundMusic or PLUGIN.DefaultBackgroundMusic)
		end)
	end

	if self.introSound then
		self.introSound:SetSoundLevel(0)
		self.introSound:PlayEx(0, 100)
		self.introSound:ChangeVolume(PLUGIN.BackgroundMusicVolume, 0)
	end
end

function PANEL:OnRemove()
	self:RemoveSounds()
end

function PANEL:RemoveSounds()
	hook.Remove("Think", "ix_cancerworldspawn")

	if self.introSound then
		self.introSound:ChangeVolume(0, 0)
		self.introSound:Stop()
		self.introSound = nil
	end
end

function PANEL:OnSlideDown()
	self:RemoveSounds()
end

function PANEL:OnSlideUp()
	self:PlayFactionSound((IsValid(self.baseDescriptionPanel) and self.curChosenFactionTbl) 
		or (IsValid(self.baseFactionPanel) and self.baseFactionPanel.curFactionTbl))
end

//if IsValid(LocalPlayer().ix_CustomFactionChoicePanel) then
	//LocalPlayer().ix_CustomFactionChoicePanel:Remove()
//end

function PANEL:OpenFaction(chosenFaction)

	if IsValid(self.baseFactionPanel) then
		self.baseFactionPanel:Remove()
	end
	if IsValid(self.baseDescriptionPanel) then
		self.baseDescriptionPanel:Remove()
	end

	local languageTbl = PLUGIN.languageTable[PLUGIN.selectedLanguage]


	local sw, sh = ScrW(), ScrH()

	//LocalPlayer().ix_CustomFactionChoicePanel = self.baseFactionPanel

	local factionNameFont = CreateCachedFont("Abel [RUS by Daymarius]", _s(60), 0)
	local factionNameFont2 = CreateCachedFont("Abel [RUS by Daymarius]", _s(40), 0)
	local factionDescFont = CreateCachedFont("Abel [RUS by Daymarius]", _s(23), 0)
	local factionDescFont3 = CreateCachedFont("Aurebesh", _s(15), 0)
	local factionNameFontH = draw.GetFontHeight(factionNameFont)
	local factionDescFontH = draw.GetFontHeight(factionDescFont)

	self.baseFactionPanel = vgui.Create("EditablePanel", self)
	self.baseFactionPanel:SetPos(0, 0)
	self.baseFactionPanel:SetSize(sw, sh)
	self.baseFactionPanel.chosenFaction = chosenFaction
	self.baseFactionPanel.curFactionIndex = 1
	self.baseFactionPanel.factionTbl = {}

	local fiW, fiH = _s(988), _s(550)
	local fiX, fiY = sw/2 - fiW/2, _s(171)
	self.baseFactionPanel.factionMat = Material(defaultFactionImage, "smooth")
	self.baseFactionPanel.Paint = function(s,w,h)
		surface.SetDrawColor(color_white)
		surface.SetMaterial(matChooseFactionBackground)
		surface.DrawTexturedRect(0, 0, w, h)

		surface.SetDrawColor(color_white)
		surface.SetMaterial(s.factionMat)
		surface.DrawTexturedRect(fiX+370, fiY+150, fiW-750, fiH-200)

		ix.util.DrawText("Wähle die Klasse deines Charakters", ScrW()*0.390, ScrH()/5.04, Color(255,255,255,255),0,0,factionNameFont2)

		ix.util.DrawText("description your class", ScrW()*0.050, ScrH()/3.50, Color(255,255,255,50),0,0,factionDescFont3)

				surface.SetDrawColor(ColorAlpha(color_white, 100))
		surface.DrawRect(ScrW()/25, ScrH()/3.700, ScrW()*0.250, ScrH()/999)

		surface.DrawRect(ScrW()/25, ScrH()/2.000, ScrW()*0.250, ScrH()/999)

		surface.DrawRect(ScrW()/25, ScrH()/2.005, ScrW()*0.009, ScrH()/300)

		surface.DrawRect(ScrW()/25, ScrH()/3.705, ScrW()*0.009, ScrH()/300)

		surface.DrawRect(ScrW()/3.560, ScrH()/2.005, ScrW()*0.009, ScrH()/300)

		surface.DrawRect(ScrW()/3.560, ScrH()/3.705, ScrW()*0.009, ScrH()/300)


		if not s.curFactionTbl then return end

		local name = s.curFactionTbl.name
		local desc = s.curFactionTbl.description

		if name then
			draw.SimpleText(name, factionNameFont, w*0.105, self.factionSelectButton:GetY() + self.factionSelectButton:GetTall() + _s(-460), color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
		end


		if desc then
			local descTextTbl = stringWrap(factionDescFont, desc, _s(480))

			surface.SetFont(factionDescFont)

			local descX = 0
			for i = 1, #descTextTbl do
				local descLineW = select(1, surface.GetTextSize(descTextTbl[i]))
				if descLineW > descX then
					descX = descLineW
				end
			end

			descX = w*0.5 - descX*0.5
-- описание персонажа descline
			for i = 1, #descTextTbl do
				local descLine = descTextTbl[i]
				--surface.SetDrawColor(255, 255, 255,50)
				--surface.DrawOutlinedRect(fiX-300, fiY+150, w-1500, h-700, 1)
				--surface.DrawLine(fiX-300, fiY+150, w-1200, h-759)
				draw.SimpleText(descLine, factionDescFont, descX-640, self.factionSelectButton:GetY() + self.factionSelectButton:GetTall() + _s(-425) + factionNameFontH + (i-1)*factionDescFontH, color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
			end
		end



	end


	local factionChoiceColor = Color(200, 200, 200, 255)

	local fChoiceButtonFont = CreateCachedFont("Abel [RUS by Daymarius]", _s(30), 0)
	local fChoiceButtonFontBlur = CreateCachedFont("Abel [RUS by Daymarius]", _s(30), 0, nil, 5)








	self.factionChooseLeft = vgui.Create("DButton", self.baseFactionPanel)
	self.factionChooseLeft:SetText("")
	self.factionChooseLeft:SetSize(_s(100), fiH)
	self.factionChooseLeft:SetPos(fiX - _s(-200), fiY)
	


	self.factionChooseLeft.ToggleButton = function(s, b)
		s:SetDisabled(not b)
		s:SetVisible(b)
	end

	self.factionChooseLeft.lerpedHover = 0
	self.factionChooseLeft.Paint = function(s,w,h)
		if s:IsHovered() then
			s.lerpedHover = Lerp(FrameTime()*6, s.lerpedHover, 1)
		else
			s.lerpedHover = Lerp(FrameTime()*6, s.lerpedHover, 0)
		end

		draw.SimpleText("<", fChoiceButtonFontBlur, w/2, h/1.800, ColorAlpha(factionChoiceColor, 80 + 150*s.lerpedHover), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		draw.SimpleText("<", fChoiceButtonFont, w/2, h/1.800, factionChoiceColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end

	self.factionChooseLeft.DoClick = function()
		surface.PlaySound(PLUGIN.ButtonPressSound)
		self.baseFactionPanel:SwitchFaction(-1)
	end
	self.factionChooseLeft.OnCursorEntered = function(s)
		surface.PlaySound(PLUGIN.ButtonAimSound)
	end













	self.factionChooseRight = vgui.Create("DButton", self.baseFactionPanel)
	self.factionChooseRight:SetText("")
	self.factionChooseRight:SetSize(_s(100), fiH)
	self.factionChooseRight:SetPos(fiX + fiW-300, fiY)

	self.factionChooseRight.ToggleButton = function(s, b)
		s:SetDisabled(not b)
		s:SetVisible(b)
	end

	self.factionChooseRight.lerpedHover = 0
	self.factionChooseRight.Paint = function(s,w,h)
		if s:IsHovered() then
			s.lerpedHover = Lerp(FrameTime()*6, s.lerpedHover, 1)

		else
			s.lerpedHover = Lerp(FrameTime()*6, s.lerpedHover, 0)
		end

		draw.SimpleText(">", fChoiceButtonFontBlur, w/2, h/1.800, ColorAlpha(factionChoiceColor, 80 + 150*s.lerpedHover), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		draw.SimpleText(">", fChoiceButtonFont, w/2, h/1.800, factionChoiceColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end

	self.factionChooseRight.DoClick = function(s)
		surface.PlaySound(PLUGIN.ButtonPressSound)
		self.baseFactionPanel:SwitchFaction(1)
	end
	self.factionChooseRight.OnCursorEntered = function(s)
		surface.PlaySound(PLUGIN.ButtonAimSound)
	end


	self.baseFactionPanel.SwitchFaction = function(s, dir)
		local isLeft = false
		dir = math.Round(dir or 0)
		if dir < 0 then
			dir = -1
			isLeft = true
		//elseif dir > 0 then
		//	dir = 1
		end

		local newFactionTbl = s.factionTbl[s.curFactionIndex + dir]
		if not newFactionTbl then return end

		s.curFactionTbl = newFactionTbl
		s.curFactionIndex = s.curFactionIndex + dir

		self.factionChooseLeft:ToggleButton(istable(s.factionTbl[s.curFactionIndex - 1]))
		self.factionChooseRight:ToggleButton(istable(s.factionTbl[s.curFactionIndex + 1]))

		//print("thinger", newFactionTbl.name, istable(s.factionTbl[s.curFactionIndex - 1]), istable(s.factionTbl[s.curFactionIndex + 1]))

		s.factionMat = Material(newFactionTbl.charImage, "smooth")

		self:PlayFactionSound(newFactionTbl)
	end



	for factionUid, v in SortedPairs(ix.faction.teams) do
		if ix.faction.HasWhitelist(v.index) then
			local i = table.insert(self.baseFactionPanel.factionTbl, v)

			if not self.baseFactionPanel.chosenFaction then
				self.baseFactionPanel.chosenFaction = factionUid
				self.baseFactionPanel.curFactionIndex = i
			end
		end
	end


	self.baseFactionPanel:SwitchFaction()

	local factionSelectFont = CreateCachedFont("Abel [RUS by Daymarius]", _s(32), 0)
	local factionSelectFontBlur = CreateCachedFont("Abel [RUS by Daymarius]", _s(36), 0, nil, 5)

	local selectButtonText = languageTbl["Select"]

	surface.SetFont(factionSelectFont)
	local fsTextW, fsTextH = surface.GetTextSize(selectButtonText)

	local fsW, fsH = fsTextW + 10, fsTextH + 10
	self.factionSelectButton = vgui.Create("DButton", self.baseFactionPanel)
	self.factionSelectButton:SetPos(sw/2.005 - fsW/2, fiY + fiH + _s(15))
	self.factionSelectButton:SetSize(fsW, fsH)
	self.factionSelectButton:SetText("")

	self.factionSelectButton.lerpedHover = 0
	self.factionSelectButton.Paint = function(s,w,h)
		if s:IsHovered() then
			s.lerpedHover = Lerp(FrameTime()*6, s.lerpedHover, 1)
		else
			s.lerpedHover = Lerp(FrameTime()*6, s.lerpedHover, 0)
		end

		local color_karman = Color(252, 179, 10)





		--draw.SimpleText(selectButtonText, factionSelectFontBlur, w/2, h/2, ColorAlpha(color_white, 40 + 100*s.lerpedHover), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		draw.SimpleText(selectButtonText, factionSelectFont, w/2, h/2, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		draw.SimpleText(selectButtonText, factionSelectFont, w/2, h/2, ColorAlpha(color_karman, 255*s.lerpedHover), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end
	self.factionSelectButton.DoClick = function(s)
		surface.PlaySound(PLUGIN.ButtonPressSound)
		self:OpenDescription(self.baseFactionPanel.curFactionIndex, self.baseFactionPanel.curFactionTbl)
	end
	self.factionSelectButton.OnCursorEntered = function(s)
		surface.PlaySound(PLUGIN.ButtonAimSound)
	end






	local factionBackFont = CreateCachedFont("Abel [RUS by Daymarius]", _s(25), 25)
	local factionBackFontBlur = CreateCachedFont("Abel [RUS by Daymarius]", _s(36), 600, nil, 6)
	local backButtonText = languageTbl["BACK"]

	surface.SetFont(factionBackFont)
	local fbTextW, fbTextH = surface.GetTextSize(backButtonText)

	local fbW, fbH = fbTextW + 10, fbTextH + 10

	self.factionBackButton = vgui.Create("DButton", self.baseFactionPanel)
	self.factionBackButton:SetPos(fiX, sh - _s(200))
	self.factionBackButton:SetSize(fbW, fbH)
	self.factionBackButton:SetText("")

	self.factionBackButton.lerpedHover = 0
	self.factionBackButton.Paint = function(s,w,h)
		if s:IsHovered() then
			s.lerpedHover = Lerp(FrameTime()*6, s.lerpedHover, 1)
		else
			s.lerpedHover = Lerp(FrameTime()*6, s.lerpedHover, 0)
		end


local color_karman = Color(252, 179, 10)



		local menubuttonmat = Material("karman/ui/menubutton.png")

								surface.SetDrawColor(color_white)
		surface.SetMaterial(menubuttonmat)
		surface.DrawTexturedRect(-1, -3, w +5, h+5)

				surface.SetDrawColor(ColorAlpha(color_karman, 255*s.lerpedHover))
		surface.SetMaterial(menubuttonmat)
		surface.DrawTexturedRect(-1, -3, w +5, h+5)



		--draw.SimpleText(backButtonText, factionBackFontBlur, w/2, h/2, ColorAlpha(factionChoiceColor, 40 + 100*s.lerpedHover), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		draw.SimpleText(backButtonText, factionBackFont, w/2, h/2, factionChoiceColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end
	self.factionBackButton.DoClick = function(s)
		surface.PlaySound("karman/navigation_back_01.mp3")

		self:SlideDown()
		//self:GetParent().mainPanel:SetVisible(true)
		self:GetParent().mainPanel:Undim()
	end
	self.factionBackButton.OnCursorEntered = function(s)
		surface.PlaySound(PLUGIN.ButtonAimSound)
	end

end


function PANEL:OpenDescription(factionIndex, factionTbl)
	//print("OpenDescription", factionIndex, factionTbl)
	if not istable(factionTbl) then return end

	self.curChosenFactionTbl = factionTbl

	local languageTbl = PLUGIN.languageTable[PLUGIN.selectedLanguage]

	if IsValid(self.baseFactionPanel) then
		self.baseFactionPanel:Remove()
	end
	if IsValid(self.baseDescriptionPanel) then
		self.baseDescriptionPanel:Remove()
	end

	local parent = self:GetParent()
	local halfWidth = parent:GetWide() * 0.5 - (padding * 2)
	local halfHeight = parent:GetTall() * 0.5 - (padding * 2)
	local modelFOV = (ScrW() > ScrH() * 1.8) and 100 or 78

	local sw, sh = ScrW(), ScrH()

	local miW, miH = _s(1003*1), _s(883*1)

	local infoFont = CreateCachedFont("Abel [RUS by Daymarius]", _s(26), 25)
	local attrFont = CreateCachedFont("Abel [RUS by Daymarius]", _s(22), 1000)

	self.baseDescriptionPanel = vgui.Create("EditablePanel", self)
	self.baseDescriptionPanel:SetPos(0, 0)
	self.baseDescriptionPanel:SetSize(sw, sh)

	self.payload = {}
	self.payload.faction = factionTbl.index

	local maximum = hook.Run("GetDefaultAttributePoints", LocalPlayer(), self.payload) or 10

	self.attributePointsLeft = maximum

	local mainInfo = vgui.Create("EditablePanel", self.baseDescriptionPanel)
	self.baseDescriptionPanel.mainInfo = mainInfo
	mainInfo:SetPos(0, 0)
	mainInfo:SetSize(miW, miH)
	mainInfo.Paint = function(s,w,h)
		--surface.SetDrawColor(color_white)
		--surface.SetMaterial(matMainInfoBG)
		--surface.DrawTexturedRect(0, 0, w, h)




		draw.SimpleText(languageTbl["FIRST NAME"], infoFont, _s(13), _s(35), Color(255,255,255,200), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
		draw.SimpleText(languageTbl["DESCRIPTION"], infoFont, _s(13), _s(140), Color(255,255,255,200), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	--	draw.SimpleText(languageTbl["BIOGRAPHY"], infoFont, _s(13), _s(260), Color(255,255,255,200), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
		draw.SimpleText(languageTbl["ATTRIBUTES"].." - "..self.attributePointsLeft.." "..languageTbl["Points Left"], infoFont, _s(13), _s(460), color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	end

	mainInfo.TextEntryTbl = {}
	mainInfo.TextEntryTblValues = {}
	mainInfo.CreateTextEntry = function(s, mod, x, y, w, h, fontSize, fontWeight)
		if not mod then return end

		if s.TextEntryTbl[mod] then return end

		fontWeight = fontWeight or 0

		local entry = vgui.Create("DTextEntry", s)
		entry.modifier = mod
		s.TextEntryTbl[mod] = entry
		s.TextEntryTblValues[mod] = ""

		entry:SetPos(x, y)
		entry:SetSize(w, h)
		entry:SetFont(CreateCachedFont("Abel [RUS by Daymarius]", fontSize, fontWeight))

		local highlightclr = Color(100, 100, 100)
		entry.Paint = function(s2, w, h)
			//draw.RoundedBox(0, 0, 0, w, h, color_white)
			s2:DrawTextEntryText(color_white, highlightclr, color_white)
		end

		entry:SetUpdateOnType(true)
		entry.OnValueChange = function(s2, text)
			s.TextEntryTblValues[mod] = text
		end

		return entry
	end

	local infoFontH = draw.GetFontHeight(infoFont)
	local textEntryBaseFontSize = _s(41)
	mainInfo:CreateTextEntry("first_name", _s(13), _s(35) + infoFontH, miW/2 - _s(-5)*2, _s(80), textEntryBaseFontSize, 1000)


	mainInfo:CreateTextEntry("description", _s(13), _s(160) + infoFontH, miW - _s(13)*40, _s(80), _s(30), 0)
	:SetMultiline(true)

	--mainInfo:CreateTextEntry("biography", _s(13), _s(280) + infoFontH, miW - _s(13)*2, _s(140), _s(30), 0)
	--:SetMultiline(true)





	local curMainInfoY = _s(515)

	self.payload.attributes = {}

	local attributeCount = 0
	for k, v in SortedPairsByMemberValue(ix.attributes.list, "name") do
		self.payload.attributes[k] = 0

		if v.noStartBonus then
			continue
		end

		attributeCount = attributeCount + 1

		local atr = vgui.Create("customCharAtribSlider", mainInfo)
		atr:SetSize(mainInfo:GetWide() - _s(160) - 100, 26)
		atr:SetPos(_s(160), curMainInfoY + 170*(attributeCount - 1))

		atr:RegisterAttribute(L(v.name), maximum)
		atr:HookCanChange(function(valChange)
			if valChange > 0 and self.attributePointsLeft < 1 then
				return false
			end

			if self.attributePointsLeft < valChange then
				return self.attributePointsLeft
			end
		end)
		atr.OnChange = function(s, totalValue, valueChange)
			self.attributePointsLeft = self.attributePointsLeft - valueChange

			self.payload.attributes[k] = totalValue
		end
	end


	local plyModel = vgui.Create("DModelPanel", self.baseDescriptionPanel)
	self.baseDescriptionPanel.plyModel = plyModel
	plyModel:SetPos(miW + 20, 0)
	plyModel:SetSize(sw - miW - 20 - 200, sh)
	--[[
	plyModel.Paint = function(s,w,h)
		draw.RoundedBox(0, 0, 0, w, h, color_white)
	end
	]]

	plyModel.dragging = false
	plyModel.ux = 0
	plyModel.uy = 0
	plyModel.ymod = -30
	plyModel.startRot = -30

	plyModel.curAng = Angle( 0, -30, 0 )
	
	plyModel.OnMousePressed = function( s, k )
		s.ux = gui.MouseX()
		s.uy = gui.MouseY()
		s.dragging = (k == MOUSE_LEFT) or false 
	end

	plyModel.LayoutEntity = function(s,ent)
		if s.dragging and not input.IsMouseDown(MOUSE_LEFT) then
			s.startRot = s.ymod
			s.dragging = false 
		end
		if s.dragging == true then
			s.ymod = s.startRot + (gui.MouseX()-s.ux)
		end
		s.curAng.y = s.ymod
		ent:SetAngles(s.curAng)
	end

	plyModel.UpdateModel = function(s, mdl, mdlIndex)
		s.firstModelSet = true

		s:SetModel(mdl)

		self.payload.model = mdlIndex

		local mdlEnt = s:GetEntity()

		if not IsValid(mdlEnt) then return end

		//PrintTable(mdlEnt:GetSequenceList())

		local idleSeq = mdlEnt:LookupSequence("idle_all_01")
		if idleSeq < 0 then
			idleSeq = mdlEnt:LookupSequence("idle_all_01")
		end
		if idleSeq < 0 then
			idleSeq = mdlEnt:LookupSequence("idle_all_01")
		end
		if idleSeq < 0 then
			idleSeq = mdlEnt:LookupSequence("idle_all_02")
		end
		if idleSeq < 0 then
			idleSeq = nil
		end
		mdlEnt:ResetSequenceInfo()
		if idleSeq then
			mdlEnt:SetSequence(idleSeq)
		end
		
		mdlEnt:SetModelScale( 1, 0 )

		local mn, mx = mdlEnt:GetRenderBounds()
		local size = 0
		size = math.max(size, math.abs(mn.x) + math.abs(mx.x))
		size = math.max(size, math.abs(mn.y) + math.abs(mx.y))
		size = math.max(size, math.abs(mn.z) + math.abs(mx.z))
		s:SetFOV(_s(20))
		s.defaultCamPos = Vector(size, 0, size*0.55)
		s.defaultLookAt = (mn + mx) * 0.5
		s:SetCamPos(s.defaultCamPos)
		s:SetLookAt(s.defaultLookAt)

		s:SetAnimated( false )

		mdlEnt:SetPos(Vector(0, 0, -20))
		mdlEnt:SetAngles(Angle(0, -30, 0))

		mdlEnt:SetEyeTarget(Vector(40, -5, 45))

		mdlEnt:SetRenderMode(RENDERMODE_TRANSALPHA)
		mdlEnt:DrawShadow(false)
	end

	//plyModel:UpdateModel("models/humans/group01/male_01.mdl")




	// 


	local modelScroll = vgui.Create("DScrollPanel", self.baseDescriptionPanel)
	self.baseDescriptionPanel.modelScroll = modelScroll

	local modelScrollW, modelScrollH = _s(150), sh*0.8
	modelScroll:SetSize(modelScrollW, modelScrollH)
	modelScroll:SetPos(sw - modelScrollW, sh*0.5 - modelScrollH*0.5)

	local factionModelTbl = factionTbl:GetModels(LocalPlayer())

	modelScroll.VBar:SetHideButtons(true)
	modelScroll.VBar:SetWide(10)

	local scrollBarBG = Color(100, 100, 100, 255)
	modelScroll.VBar.Paint = function(s,w,h)
		--surface.SetDrawColor(scrollBarBG)
		--surface.DrawRect(0, 0, w, h)

		--surface.SetDrawColor(color_white)
		--surface.DrawOutlinedRect(0, 0, w, h)
	end

	modelScroll.VBar.btnGrip.Paint = function(s,w,h)
		local mx, my = 2, 2
		surface.SetDrawColor(color_white)
		surface.DrawRect(mx, my, w - mx*2, h - my*2)
	end

	modelScroll.PaintOver = function(s,w,h)
		//surface.SetDrawColor(color_white)
		//surface.DrawOutlinedRect(0, 0, w, h)
	end

	local modelIconBG = Color(0, 0, 0, 220)

	local modelIconC = 0
	local modelIconTotal = table.Count(factionModelTbl)
	for k, v in SortedPairs(factionModelTbl) do
		modelIconC = modelIconC + 1

		local modelStr = isstring(v) and v or v[1]

		if not plyModel.firstModelSet then
			plyModel:UpdateModel(modelStr, k)
		end

		local icon = modelScroll:Add("DModelPanel")
		icon:Dock(TOP)
		icon:DockMargin(0, 0, 0, modelIconC >= modelIconTotal and 0 or 1)
		icon:SetSize(modelScroll:GetWide(), modelScroll:GetWide())
		//icon:InvalidateLayout(true)
		icon:SetAnimated(false)
		icon.DoClick = function(s)
			plyModel:UpdateModel(modelStr, k)
		end
		icon.LayoutEntity = function()
		end

		icon.modelIconHoverBG = Color(255, 255, 255, 0)

		icon.lerpedHover = 0
		icon.OldPaint = icon.OldPaint or icon.Paint
		icon.Paint = function(s,w,h)
			
		end

		if isstring(v) then
			icon:SetModel(v)
		else
			icon:SetModel(v[1])
		end

		local mdlEnt = icon:GetEntity()
		if IsValid(mdlEnt) then
			local idleSeq = mdlEnt:LookupSequence("idle_subtle")
			if idleSeq < 0 then
				idleSeq = mdlEnt:LookupSequence("idle")
			end
			if idleSeq < 0 then
				idleSeq = mdlEnt:LookupSequence("idle_all_01")
			end
			if idleSeq < 0 then
				idleSeq = mdlEnt:LookupSequence("idle_all_02")
			end
			if idleSeq < 0 then
				idleSeq = nil
			end
			mdlEnt:ResetSequenceInfo()
			if idleSeq then
				mdlEnt:SetSequence(idleSeq)
			end
			mdlEnt:SetModelScale(1, 0)

			local mn, mx = mdlEnt:GetRenderBounds()
			local size = 0
			size = math.max(size, math.abs(mn.x) + math.abs(mx.x))
			size = math.max(size, math.abs(mn.y) + math.abs(mx.y))
			size = math.max(size, math.abs(mn.z) + math.abs(mx.z))
			
			icon:SetFOV(_s(15))
			icon:SetCamPos(Vector(size, 0, size*0.35))
			icon:SetLookAt((mn + mx) * 0.5)

			icon:SetAnimated( false )

			mdlEnt:SetPos(Vector(0, 0, -30))
			mdlEnt:SetAngles(Angle(0, 0, 0))

			mdlEnt:SetEyeTarget(Vector(40, -5, 45))

			mdlEnt:SetRenderMode(RENDERMODE_TRANSALPHA)
			mdlEnt:DrawShadow(false)
		end
	end




	local backButtonText = languageTbl["BACK"]

	local backButtonFont = CreateCachedFont("Abel [RUS by Daymarius]", _s(25), 25)
	local backButtonFontBlur = CreateCachedFont("Abel [RUS by Daymarius]", _s(40), 0, nil, 8)

	surface.SetFont(backButtonFont)
	local backButtonW, backButtonH = select(1, surface.GetTextSize(backButtonText)) + 20, _s(50) // _s(200)

	local charBackBut = vgui.Create("DButton", self.baseDescriptionPanel)
	self.baseDescriptionPanel.charBackBut = charBackBut
	charBackBut:SetText("")
	charBackBut:SetSize(backButtonW-10, backButtonH-15)
	charBackBut:SetPos(sw/15 - backButtonW/2, miH + (sh - miH)/1.500 - backButtonH/2)
	charBackBut.DoClick = function()
		surface.PlaySound(PLUGIN.ButtonPressSound)
		//self.progress:DecrementProgress()

		//self:SlideDown()

		//parent.mainPanel:SetVisible(true)
		//parent.mainPanel:Undim()

		self:OpenFaction()
	end

	charBackBut.OnCursorEntered = function(s)
		surface.PlaySound(PLUGIN.ButtonAimSound)
	end

	charBackBut.lerpedHover = 0
	charBackBut.Paint = function(s,w,h)
		//draw.RoundedBox(0, 0, 0, w, h, Color(255,0,0,255))

		if s:IsHovered() then
			s.lerpedHover = Lerp(FrameTime()*6, s.lerpedHover, 1)
		else
			s.lerpedHover = Lerp(FrameTime()*6, s.lerpedHover, 0)
		end



		local color_karman = Color(252, 179, 10)



		local menubuttonmat = Material("karman/ui/menubutton.png")

										surface.SetDrawColor(color_white)
		surface.SetMaterial(menubuttonmat)
		surface.DrawTexturedRect(-1, -3, w +5, h+5)

				surface.SetDrawColor(ColorAlpha(color_karman, 255*s.lerpedHover))
		surface.SetMaterial(menubuttonmat)
		surface.DrawTexturedRect(-1, -3, w +5, h+5)

		--draw.SimpleText(backButtonText, backButtonFontBlur, w/2, h/2, ColorAlpha(color_white, 60 + 100*s.lerpedHover), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		draw.SimpleText(backButtonText, backButtonFont, w/2, h/2, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end



	surface.SetFont(backButtonFont)
	local createButtonW, createButtonH = select(1, surface.GetTextSize(languageTbl["CREATE"])) + 20, _s(50) // _s(160)

	local charCreateBut = vgui.Create("DButton", self.baseDescriptionPanel)
	self.baseDescriptionPanel.charCreateBut = charCreateBut
	charCreateBut:SetText("")
	charCreateBut:SetSize(createButtonW-10, createButtonH-15)
	charCreateBut:SetPos(sw/2.500 - createButtonW/2, miH + (sh - miH)/1.590 - createButtonH/2)
	charCreateBut.DoClick = function(s)
		surface.PlaySound("assign_leader_click_01.wav")

		//self:SlideDown()
		//parent.mainPanel:SetVisible(true)
		
		self:SendPayload()

	end

	charCreateBut.OnCursorEntered = function(s)
		surface.PlaySound(PLUGIN.ButtonAimSound)
	end

	charCreateBut.lerpedHover = 0
	charCreateBut.Paint = function(s,w,h)
		if s:IsHovered() then
			s.lerpedHover = Lerp(FrameTime()*6, s.lerpedHover, 1)
		else
			s.lerpedHover = Lerp(FrameTime()*6, s.lerpedHover, 0)
		end


		local color_karman = Color(252, 179, 10)



		local menubuttonmat = Material("karman/ui/menubutton.png")

										surface.SetDrawColor(color_white)
		surface.SetMaterial(menubuttonmat)
		surface.DrawTexturedRect(-1, -3, w +5, h+5)

				surface.SetDrawColor(ColorAlpha(color_karman, 255*s.lerpedHover))
		surface.SetMaterial(menubuttonmat)
		surface.DrawTexturedRect(-1, -3, w +5, h+5)

		--draw.SimpleText(languageTbl["CREATE"], backButtonFontBlur, w/2, h/2, Color(120, 120, 120, 60 + 150*s.lerpedHover), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		draw.SimpleText(languageTbl["CREATE"], backButtonFont, w/2, h/2, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end


	-- setup character creation hooks
	net.Receive("ixCharacterAuthed", function()
		timer.Remove("ixCharacterCreateTimeout")
		self.awaitingResponse = false

		local id = net.ReadUInt(32)
		local indices = net.ReadUInt(6)
		local charList = {}

		for _ = 1, indices do
			charList[#charList + 1] = net.ReadUInt(32)
		end

		ix.characters = charList

		if IsValid(parent.loadCharacterPanel) then
			parent.loadCharacterPanel:Populate()
		end


		self:SlideDown()

		if (!IsValid(self) or !IsValid(parent)) then
			return
		end


		if (LocalPlayer():GetCharacter()) then
			parent.mainPanel:Undim()
			parent.mainPanel:SetVisible(true)
			parent:ShowNotice(2, L("charCreated"))

			self:ResetData()
		elseif (id) then
			self.bMenuShouldClose = true

			net.Start("ixCharacterChoose")
				net.WriteUInt(id, 32)
			net.SendToServer()
		else
			//self:SlideDown()
		end
	end)

	net.Receive("ixCharacterAuthFailed", function()
		timer.Remove("ixCharacterCreateTimeout")
		if not IsValid(self) or not IsValid(parent) then return end

		self.awaitingResponse = false

		local fault = net.ReadString()
		local args = net.ReadTable()

		self:SlideDown()

		parent.mainPanel:Undim()
		parent.mainPanel:SetVisible(true)
		parent:ShowNotice(3, L(fault, unpack(args)))
	end)
end

function PANEL:SendPayload()
	if (self.awaitingResponse) then
		return
	end

	self:FormatPayload()

	self.awaitingResponse = true

	timer.Create("ixCharacterCreateTimeout", 10, 1, function()
		if (IsValid(self) and self.awaitingResponse) then
			local parent = self:GetParent()

			self.awaitingResponse = false
			self:SlideDown()
			parent.mainPanel:SetVisible(true)

			parent.mainPanel:Undim()
			parent:ShowNotice(3, L("unknownError"))
		end
	end)

	//print("self.payload", self.payload)
	//PrintTable(self.payload)

	--[[
	]]
	net.Start("ixCharacterCreate")
	net.WriteUInt(table.Count(self.payload), 8)

	for k, v in pairs(self.payload) do
		net.WriteString(k)
		net.WriteType(v)
	end

	net.SendToServer()

end

function PANEL:FormatPayload()
	self.payload = self.payload or {}

	//print("mainInfo.TextEntryTblValues")
	//PrintTable(mainInfo.TextEntryTblValues)

	local mainInfo = self.baseDescriptionPanel.mainInfo

	self.payload.name = mainInfo.TextEntryTblValues["first_name"]
	self.payload.first_name = nil

	self.payload.description = mainInfo.TextEntryTblValues["description"]
	self.payload.biography = mainInfo.TextEntryTblValues["biography"]


end

function PANEL:ResetData()
	self.payload = {}
	self.attributePointsLeft = nil
	timer.Remove("ixCharacterCreateTimeout")
	self.awaitingResponse = nil

	if IsValid(self.baseFactionPanel) then
		self.baseFactionPanel:Remove()
	end
	if IsValid(self.baseDescriptionPanel) then
		self.baseDescriptionPanel:Remove()
	end

	local parent = self:GetParent()

	self:Remove()

	parent.newCharacterPanel = parent:Add("ixCharMenuNew")
	parent.newCharacterPanel:SlideDown(0)
end

function PANEL:Paint(w, h)
	//draw.RoundedBox(0, 50, 50, 200, 200, color_white)

	if IsValid(self.baseDescriptionPanel) then

		surface.SetDrawColor(color_white)
		surface.SetMaterial(matBackground)
		surface.DrawTexturedRectRotated(w/2, h/2, w, h, 0)

		local factionDescFont4 = CreateCachedFont("Aurebesh", _s(15), 0)

				ix.util.DrawText("                 wenn du das liest", ScrW()*0.030, ScrH()/22.50, Color(255,255,255,30),0,0,factionDescFont4)

				ix.util.DrawText("          hast du eine geheime", ScrW()*0.060, ScrH()/7.05, Color(255,255,255,30),0,0,factionDescFont4)

				ix.util.DrawText("botschaft von berry", ScrW()*0.130, ScrH()/2.28, Color(255,255,255,30),0,0,factionDescFont4)

			--	ix.util.DrawText("          entdeckt krass", ScrW()*0.060, ScrH()/4.01, Color(255,255,255,30),0,0,factionDescFont4)

				surface.SetDrawColor(ColorAlpha(color_white, 100))

		        surface.DrawRect(ScrW()/130, ScrH()/15.700, ScrW()*0.235, ScrH()/999)

				surface.DrawRect(ScrW()/130, ScrH()/6.200, ScrW()*0.235, ScrH()/999)

				surface.DrawRect(ScrW()/130, ScrH()/2.190, ScrW()*0.235, ScrH()/999)

				--surface.DrawRect(ScrW()/130, ScrH()/3.700, ScrW()*0.235, ScrH()/999)

		        --surface.DrawRect(ScrW()/25, ScrH()/2.005, ScrW()*0.009, ScrH()/300)

		local staminamat = Material("karman/ui/attribute/stamina2.png")

		surface.SetDrawColor(color_white)
		surface.SetMaterial(staminamat)
		surface.DrawTexturedRect(ScrW()/40, ScrH()/2.100, ScrW()/20, ScrH()/10)

		local powermat = Material("karman/ui/attribute/power.png")

		surface.SetDrawColor(color_white)
		surface.SetMaterial(powermat)
		surface.DrawTexturedRect(ScrW()/40, ScrH()/1.600, ScrW()/20, ScrH()/10)

		local runmat = Material("karman/ui/attribute/run.png")

		surface.SetDrawColor(color_white)
		surface.SetMaterial(runmat)
		surface.DrawTexturedRect(ScrW()/40, ScrH()/1.260, ScrW()/20, ScrH()/10)


	end
end

vgui.Register("ixCharMenuNew", PANEL, "ixCharMenuPanel")

// remove when done with development
if (IsValid(ix.gui.characterMenu)) then
	ix.gui.characterMenu:Remove()

	--TODO: REMOVE ME
	ix.gui.characterMenu = vgui.Create("ixCharMenu")
end