
local PLUGIN = PLUGIN

local ScrW = ScrW
local ScrH = ScrH
local function _s(scale)
	return (scale / 1080) * ScrH()
end

local errorModel = "models/error.mdl"

local loadCharBG = Material("materials/karman/menu3.png", "smooth")

local CreateCachedFont = PLUGIN.CreateCachedFont

local PANEL = {}

function PANEL:Init()
	CreateCachedFont = PLUGIN.CreateCachedFont

	local parent = self:GetParent()

	local sw, sh = ScrW(), ScrH()
	local languageTbl = PLUGIN.languageTable[PLUGIN.selectedLanguage]

	local backButtonFont = CreateCachedFont("Abel [RUS by Daymarius]", _s(25), 0)
	local backButtonFontBlur = CreateCachedFont("Abel [RUS by Daymarius]", _s(40), 0, nil, 8)
	local backButtonText = languageTbl["BACK"]
	
	local backButtonPaddingX, backButtonPaddingY = _s(200), _s(75)
	local backButtonW, backButtonH = _s(100), _s(50)

	local charBackBut = vgui.Create("DButton", self)
	self.charBackBut = charBackBut
	charBackBut:SetText("")
	charBackBut:SetSize(backButtonW-30, backButtonH-15)
	charBackBut:SetPos(backButtonPaddingX, sh - backButtonH - backButtonPaddingY)
	charBackBut.DoClick = function()
		LocalPlayer():EmitSound(PLUGIN.ButtonPressSound)

		self:SlideDown()
		parent.mainPanel:Undim()
	end

	charBackBut.OnCursorEntered = function(s)
		LocalPlayer():EmitSound(PLUGIN.ButtonAimSound)
	end

	charBackBut.lerpedHover = 0
	charBackBut.Paint = function(s,w,h)
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



	local charScrollW, charScrollH = sw*0.725, sh*0.6

	local charScroll = vgui.Create("DHorizontalScroller", self)
	self.charScroll = charScroll
	charScroll:SetSize(charScrollW, charScrollH)
	charScroll:SetPos(sw*0.5 - charScrollW*0.475, sh*0.5 - charScrollH*0.5)
	charScroll.Paint = function(s,w,h)
		//draw.RoundedBox(0, 0, 0, w, h, color_white)
	end

	charScroll:SetOverlap(-20)

	local charNameFont = CreateCachedFont("Abel [RUS by Daymarius]", _s(34), 0)
	local charClassFont = CreateCachedFont("Abel [RUS by Daymarius]", _s(28), 0)
	local charDeleteFont = CreateCachedFont("Abel [RUS by Daymarius]", _s(26), 0)
	local charSelectFont = CreateCachedFont("Abel [RUS by Daymarius]", _s(26), 0)

	local charNameClr = Color(255, 255, 255, 255)
	local charFactionClr = Color(150, 150, 150, 255)
	local charDeleteClr = Color(255, 50, 50, 255)
	local charSelectClr = Color(200, 200, 200, 255)

	local charDeleteHoverClr = Color(255, 50, 50, 0)
	local charSelectHoverClr = Color(200, 200, 200, 0)

	local outlineClr = Color(200, 200, 200, 255)
	local bgClr = Color(0, 0, 0, 140)
	local titleBgClr = Color(255, 255, 255, 15)


















	-- character deletion panel
	self.delete = self:AddSubpanel("delete")
	self.delete:SetVisible(false)
	self.delete:SetTitle(nil)
	self.delete:Dock(FILL)
	self.delete.Paint = function(s,w,h)
		surface.SetDrawColor(Color(0,0,0,255))
		surface.DrawRect(0, 0, w, h)
	end
	self.delete.OnSetActive = function()
		self.charScroll:SetVisible(false)
		self.deleteModel:SetModel(self.delete.charTbl:GetModel())
		--[[
		self:CreateAnimation(self.animationTime, {
			index = 2,
			target = {backgroundFraction = 0},
			easing = "outQuint"
		})
		]]
	end

	local deleteInfo = self.delete:Add("Panel")
	deleteInfo:SetSize(parent:GetWide() * 0.5, parent:GetTall())
	deleteInfo:Dock(LEFT)

	local deleteReturn = deleteInfo:Add("ixMenuButton")
	deleteReturn:Dock(BOTTOM)
	deleteReturn:SetText("no")
	deleteReturn:SizeToContents()
	deleteReturn.DoClick = function()
		self.delete:SetVisible(false)
		self.charScroll:SetVisible(true)
		self:SetActiveSubpanel("main")

	end

	local deleteConfirm = self.delete:Add("ixMenuButton")
	deleteConfirm:Dock(BOTTOM)
	deleteConfirm:SetText("yes")
	deleteConfirm:SetContentAlignment(6)
	deleteConfirm:SizeToContents()
	deleteConfirm:SetTextColor(derma.GetColor("Error", deleteConfirm))
	deleteConfirm.DoClick = function()
		local id = self.delete.charTbl:GetID()

		parent:ShowNotice(1, L("deleteComplete", self.delete.charTbl:GetName()))
		
		self:Populate(id)
		self.delete:SetVisible(false)
		self.charScroll:SetVisible(true)
		self:SetActiveSubpanel("main")

		//self:SlideDown()
		//parent.mainPanel:Undim()


		net.Start("ixCharacterDelete")
			net.WriteUInt(id, 32)
		net.SendToServer()
	end

	self.deleteModel = deleteInfo:Add("ixModelPanel")
	self.deleteModel:Dock(FILL)
	self.deleteModel:SetModel(errorModel)
	self.deleteModel:SetFOV((ScrW() > ScrH() * 1.8) and 102 or 78)
	self.deleteModel.PaintModel = self.deleteModel.Paint

	local deleteNag = self.delete:Add("Panel")
	deleteNag:SetTall(parent:GetTall() * 0.5)
	deleteNag:Dock(BOTTOM)

	local deleteTitle = deleteNag:Add("DLabel")
	deleteTitle:SetFont("ixTitleFont")
	deleteTitle:SetText(L("areYouSure"):utf8upper())
	deleteTitle:SetTextColor(ix.config.Get("color"))
	deleteTitle:SizeToContents()
	deleteTitle:Dock(TOP)

	local deleteText = deleteNag:Add("DLabel")
	deleteText:SetFont("ixMenuButtonFont")
	deleteText:SetText(L("deleteConfirm"))
	deleteText:SetTextColor(color_white)
	deleteText:SetContentAlignment(7)
	deleteText:Dock(FILL)














	charScroll.AddCharacter = function(s, charTbl)
		local charName = charTbl:GetName()
		local factionName = ix.faction.Get(charTbl:GetFaction()).name:upper()

		local base = vgui.Create("EditablePanel", s)
		base:SetSize(_s(450), charScrollH)
		base.Paint = function(s,w,h)
			surface.SetDrawColor(bgClr)
			--surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(titleBgClr)
			--surface.DrawRect(0, 0, w, _s(90))

			local hologram = Material("karman/ui/hologram2.png")

				local fiW, fiH = _s(988), _s(550)
	local fiX, fiY = sw/2 - fiW/2, _s(171)

					surface.SetDrawColor(255,255,255,30)
		surface.SetMaterial(hologram)
		surface.DrawTexturedRect(105, 100, fiW-750, fiH-50)

			local tw, th = draw.SimpleText(charName, charNameFont, w*0.5, 10, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
			draw.SimpleText(factionName, charClassFont, w*0.5, 10 + th + 5, charFactionClr, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
		end

		base.PaintOver = function(s,w,h)
			surface.SetDrawColor(outlineClr)
			--surface.DrawOutlinedRect(0, 0, w, h)
		end

		base.charTbl = charTbl

		s:AddPanel(base)






		local previewModel = vgui.Create("DModelPanel", base)
		previewModel:SetPos(80, _s(90))
		previewModel:SetSize(base:GetWide(), base:GetTall() - _s(90))
		previewModel.LayoutEntity = function()end

		previewModel.UpdateModel = function(s, modelOverride)
			if not charTbl then
				s:SetModel(errorModel)
				return
			end
			s:SetModel(modelOverride or charTbl:GetModel())

			local mdlEnt = s:GetEntity()
			if not IsValid(mdlEnt) then
				//s:SetModel(errorModel)
				return
			end

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

			mdlEnt:SetSkin(charTbl:GetData("skin", 0))

			for i = 0, (mdlEnt:GetNumBodyGroups() - 1) do
				mdlEnt:SetBodygroup(i, 0)
			end

			local bodygroups = charTbl:GetData("groups", nil)

			if istable(bodygroups) then
				for k, v in pairs(bodygroups) do
					mdlEnt:SetBodygroup(k, v)
				end
			end


			local mn, mx = mdlEnt:GetRenderBounds()
			local size = 0
			size = math.max(size, math.abs(mn.x) + math.abs(mx.x))
			size = math.max(size, math.abs(mn.y) + math.abs(mx.y))
			size = math.max(size, math.abs(mn.z) + math.abs(mx.z))
			
			s:SetFOV(_s(50))
			s:SetCamPos(Vector(size, 0, size*0.65))
			s:SetLookAt((mn + mx) * 0.5)

			s:SetAnimated( false )

			mdlEnt:SetPos(Vector(0, 0, 0))
			mdlEnt:SetAngles(Angle(0, 0, 0))

			mdlEnt:SetEyeTarget(Vector(40, -5, 45))

			mdlEnt:SetRenderMode(RENDERMODE_TRANSALPHA)
			mdlEnt:DrawShadow(false)
		end





		local deleteBtn = vgui.Create("DButton", base)
		deleteBtn:SetText(languageTbl["Delete"])
		deleteBtn:SetFont(charDeleteFont)
		deleteBtn:SetTextColor(charDeleteClr)
		deleteBtn:SizeToContentsX(14)
		deleteBtn:SizeToContentsY(10)
		deleteBtn:SetPos(20, charScrollH - 20 - deleteBtn:GetTall())

		deleteBtn.DoClick = function()
			LocalPlayer():EmitSound("Helix.Press")

			self.delete.charTbl = base.charTbl
			self.delete:SetVisible(true)
			self:SetActiveSubpanel("delete")
		end

		deleteBtn.OnCursorEntered = function(s)
			LocalPlayer():EmitSound("Helix.Rollover")
		end

		deleteBtn.lerpedHover = 0
		deleteBtn.Paint = function(s,w,h)
			if s:IsHovered() then
				s.lerpedHover = Lerp(FrameTime()*6, s.lerpedHover, 1)
			else
				s.lerpedHover = Lerp(FrameTime()*6, s.lerpedHover, 0)
			end

			charDeleteHoverClr.a = 30*s.lerpedHover
			
			surface.SetDrawColor(charDeleteHoverClr)
			surface.DrawRect(0, 0, w, h)
			
			surface.SetDrawColor(outlineClr)
			surface.DrawOutlinedRect(0, 0, w, h)
		end




		local selectBtn = vgui.Create("DButton", base)
		selectBtn:SetText(languageTbl["Select"])
		selectBtn:SetFont(charSelectFont)
		selectBtn:SetTextColor(charSelectClr)
		selectBtn:SizeToContentsX(14)
		selectBtn:SizeToContentsY(10)
		selectBtn:SetPos(base:GetWide() - 20 - selectBtn:GetWide(), charScrollH - 20 - selectBtn:GetTall())

		selectBtn.DoClick = function()
			LocalPlayer():EmitSound("Helix.Press")

			self:SlideDown(1, function()
				net.Start("ixCharacterChoose")
					net.WriteUInt(base.charTbl:GetID(), 32)
				net.SendToServer()
			end, true)
		end

		selectBtn.OnCursorEntered = function(s)
			LocalPlayer():EmitSound("Helix.Rollover")
		end

		selectBtn.lerpedHover = 0
		selectBtn.Paint = function(s,w,h)
			if s:IsHovered() then
				s.lerpedHover = Lerp(FrameTime()*6, s.lerpedHover, 1)
			else
				s.lerpedHover = Lerp(FrameTime()*6, s.lerpedHover, 0)
			end

			charSelectHoverClr.a = 30*s.lerpedHover
			
			surface.SetDrawColor(charSelectHoverClr)
			surface.DrawRect(0, 0, w, h)
			
			surface.SetDrawColor(outlineClr)
			surface.DrawOutlinedRect(0, 0, w, h)
		end


		previewModel:UpdateModel()
	end



	self:Populate()

	self:SetActiveSubpanel("main", 0)

end

function PANEL:Populate(ignoreID)
	self.charScroll:Clear()

	for i = 1, #ix.characters do
		local id = ix.characters[i]
		local character = ix.char.loaded[id]

		if (!character or character:GetID() == ignoreID) then
			continue
		end


		self.charScroll:AddCharacter(character)
	end
end

function PANEL:OnCharacterDeleted(charTbl)
	if (--[[self.bActive and ]]#ix.characters == 0) then
		self:SlideDown()
	end
end

function PANEL:Paint(w, h)
	surface.SetDrawColor(color_white)
	surface.SetMaterial(loadCharBG)
	surface.DrawTexturedRect(0, 0, w, h)
end

vgui.Register("ixCharMenuLoad", PANEL, "ixCharMenuPanel")

// remove when done with development
if (IsValid(ix.gui.characterMenu)) then
	ix.gui.characterMenu:Remove()

	--TODO: REMOVE ME
	ix.gui.characterMenu = vgui.Create("ixCharMenu")
end

hook.Add("OnCharacterMenuCreated", "customhelixthingopenchar", function(parent)
	--[[
	parent.loadCharacterPanel:Remove()

	parent.loadCharacterPanel = parent:Add("ixCharMenuLoad2")
	parent.loadCharacterPanel:SlideDown(0)
	]]
end)