local PANEL = {}

local redClr = Color(206, 19, 19)
local greenClr = Color(29, 214, 8)

function PANEL:Init()
	if ix.gui.exercise then
		ix.gui.exercise:Remove()
	end

	ix.gui.exercise = self
	self:ParentToHUD()
	self:SetSize(ScrW(), ScrH())

	self.currentKey = self:Add("DLabel")
	self.currentKey:SetFont("ixMediumFont")
	self.currentKey:SetText(string.upper(L("eWaitUntilStart")))
	self.currentKey:SetTextColor(redClr)
	self.currentKey:SetContentAlignment(5)
	self.currentKey:SizeToContents()
	self.currentKey:Center()
	self.currentKey:CenterVertical(0.75)

	self.leaveLabel = self:Add("DLabel")
	self.leaveLabel:SetFont("ixMediumFont")
	self.leaveLabel:SetContentAlignment(5)
	self.leaveLabel:SetText(string.upper(L("eLeave")))
	self.leaveLabel:SizeToContents()
	self.leaveLabel:Center()
	self.leaveLabel:CenterVertical(0.79)
end

function PANEL:Think()
	if input.IsKeyDown(KEY_SPACE) and self.currentKey:GetValue() != string.upper(L("eWaitUntilStart")) then
		self:Remove()
	end

	local exerciseEvent = LocalPlayer():GetNetVar("ixExerciseEvent", false)

	if exerciseEvent then
		self.currentKey:SetText(string.upper(L("ePressButton") .. " [" .. input.GetKeyName(exerciseEvent.key) .. "]") or "ERROR")
		self.currentKey:SetTextColor(exerciseEvent.successful and greenClr or redClr)
		self.currentKey:SizeToContents()
		self.currentKey:Center()
		self.currentKey:CenterVertical(0.75)
	end
end

vgui.Register("ixExercisePanel", PANEL, "Panel")