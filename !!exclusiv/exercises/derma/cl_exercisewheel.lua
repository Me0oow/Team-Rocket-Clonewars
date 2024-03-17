local PANEL = {}

local redClr = Color(206, 19, 19)
local greenClr = Color(29, 214, 8)
local backgroundClr = Color(29, 27, 27, 150)

local function PointOnCircle( ang, radius, offX, offY )
	ang =  math.rad( ang )
	local x = math.cos( ang ) * radius + offX
	local y = math.sin( ang ) * radius + offY
	return x, y
end

function PANEL:Init()
	if ix.gui.exerciseWheel then
		ix.gui.exerciseWheel:Remove()
	end

	ix.gui.exerciseWheel = self
	self:SetSize(ScrW(), ScrH())


	local exerciseCount = table.Count(ix.exercises.list)
	local interval = 360 / exerciseCount
	local centerX, centerY = ScrW() * 0.475, ScrH() * 0.5
	local radius = 100

	self.exerciseButtons = {}
	local w = 0
	for degrees = 1, 360, interval do --Start at 1, go to 360, and skip forward at even intervals.
		w = w + 1
		local x, y = PointOnCircle( degrees, radius, centerX, centerY )

		local button = self:Add("DButton")
		button:SetText("...")
		button:SetFont("ixMediumFont")
		button:SizeToContents()
		button:SetPos(x, y)

		self.exerciseButtons[#self.exerciseButtons + 1] = button
	end

	local iter = 1
	for k, v in pairs(ix.exercises.list) do
		local btn = self.exerciseButtons[iter]
		btn:SetText(string.upper(k))
		btn:SizeToContents()
		btn:SetPos(btn:GetX() - btn:GetWide()/2,btn:GetY())
		btn.DoClick = function(s)
			surface.PlaySound("helix/ui/press.wav")

			netstream.Start("ixExerciseStart", k)
		end

		iter = iter + 1
	end

	self:MakePopup()
end

function PANEL:Think()
	if !input.IsKeyDown(KEY_G) then
		self:Remove()
	end
end

function PANEL:Paint(w, h)
	surface.SetDrawColor(backgroundClr)
	surface.DrawRect(0, 0, w, h)
end

vgui.Register("ixExerciseWheel", PANEL, "Panel")