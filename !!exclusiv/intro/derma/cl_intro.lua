
DEFINE_BASECLASS("EditablePanel")

local PANEL = {}

function PANEL:Init()
	if (IsValid(ix.gui.intro)) then
		ix.gui.intro:Remove()
	end

	ix.gui.intro = self

	gui.EnableScreenClicker(true)
	RunConsoleCommand("stopsound")


	self:SetSize(ScrW(), ScrH())
	self:SetPos(0, 0)
	self:SetZPos(99999)
	self:MakePopup()

	self.backgroundMat = Material("materials/vgui/intro/background.jpg", "noclamp smooth")
	self.logoMat = Material("materials/vgui/intro/logo.png", "noclamp smooth")
	self.loadingBackgroundMat = Material("materials/vgui/intro/loading_screen.png", "noclamp smooth")

	// rising sequence
	self.introRisingText1 = 0
	self.introRisingText2 = 0
	self.introRisingText3 = 0
	self.introRisingFFT = 0
	self.introRisingLogo = 0

	self.fft = {}

	// first sequence
	self.backgroundFade = 0
	self.logoFade = 0
	self.continueButtonFade = 0
	self.continueButtonText = "Drücke die Leertaste, um fortzufahren"
	self.continueButtonPressed = false
	self.loadingFade = 0

	// loading sequence
	self.loadingDuration = 10
	self.loadingCurtime = 0
	self.loadingFraction = 0
	self.loadingAlpha = 0

	self.loadingText = [[
			Die Schlacht um Geonosis

	Chapter 1:

	Die Klontruppen treten zur Rettung
	des Jedi Ordens.
	]]

	self.richText = vgui.Create("RichText", self)
	self.richText:SetPos(ScrW()*0.045, ScrH()*0.1)
	self.richText:SetSize(ScrW()*0.245, ScrH()*0.55)
	self.richText:SetMouseInputEnabled(false)
	self.richText:AppendText(self.loadingText)
	self.richText:Hide()

	self.richText.Paint = function()
	end

	self.richText.PerformLayout = function(pnl)
		pnl:SetFontInternal("ixMediumFont")
		pnl:SetFGColor( color_white )
	end

	-- animation parameters
	self.bBackground = true
	self.volume = 1
	self.sunbeamOffset = 0
	self.continueText = 0
	self.pulse = 0
end

-- @todo h a c k
function PANEL:Think()
	if self.introStart == nil and (IsValid(LocalPlayer())) then
		self.introStart = true
		self.localPlayerNick = LocalPlayer():Nick()
		self.Think = nil
		self:BeginIntro()
	end

end

function PANEL:BeginIntro()
	local bLoaded = false

	if (ix and ix.option and ix.option.Set) then
		local bSuccess, _ = pcall(ix.option.Set, "showIntro", false)
		bLoaded = bSuccess
	end

	if (!bLoaded) then
		self:Remove()

		if (ix and ix.gui and IsValid(ix.gui.characterMenu)) then
			ix.gui.characterMenu:Remove()
		end

		ErrorNoHalt("[Helix] Something has errored and prevented the framework from loading correctly - check your console for errors!\n")
		return
	end

	self:MoveToFront()
	self:RequestFocus()

	sound.PlayFile("sound/buttons/combine_button2.wav", "", function()
		timer.Create("ixIntroStart", 2, 1, function()
			sound.PlayFile("sounds/intro/aggressive_riser.mp3", "", function(channel, status, error)
				if (IsValid(channel)) then
					channel:SetVolume(self.volume)
					self.channel = channel
				end

				self:BeginAnimation()
			end)
		end)
	end)
end

function PANEL:BeginAnimation()
	self:CreateAnimation(1, {
			target = {backgroundFade = 0},
			easing = "inOutQuad",
			bIgnoreConfig = true,
			OnComplete = function(animation, panel)
			end
		})
		:CreateAnimation(2, {
			target = {introRisingText1 = 1},
			easing = "inOutQuad",
			bIgnoreConfig = true
		})
		:CreateAnimation(3, {
			easing = "inOutQuad",
			bIgnoreConfig = true
		})
		:CreateAnimation(2, {
			target = {introRisingText2 = 1},
			easing = "inOutQuad",
			bIgnoreConfig = true
		})
		:CreateAnimation(3, {
			easing = "inOutQuad",
			bIgnoreConfig = true
		})
		:CreateAnimation(2, {
			target = {introRisingText3 = 1},
			easing = "inOutQuad",
			bIgnoreConfig = true
		})
		:CreateAnimation(3, {
			target = {introRisingFFT = 1},
			easing = "linear",
			bIgnoreConfig = true
		})
		:CreateAnimation(8.2, {
			easing = "inOutQuad",
			bIgnoreConfig = true,
			OnComplete = function(animation, panel)
				panel.introRisingText1 = 0
				panel.introRisingText2 = 0
				panel.introRisingText3 = 0
				panel.introRisingFFT = 0

				sound.PlayFile("sounds/intro/ambient.mp3", "", function(channel, status, error)
					if (IsValid(channel)) then
						channel:SetVolume(self.volume)
						self.channel = channel
					end
				end)
			end
		})
		//
		:CreateAnimation(2, {
			target = {backgroundFade = 1 },
			easing = "inOutQuad",
			bIgnoreConfig = true
		})
		:CreateAnimation(3, {
			easing = "linear",
			bIgnoreConfig = true,
			OnComplete = function(animation, panel)
				sound.PlayFile("sounds/intro/big_impact.mp3", "", function(channel, status, error)
					if (IsValid(channel)) then
						channel:SetVolume(self.volume)
					end
				end)
			end
		})
		:CreateAnimation(4, {
			target = {logoFade = 1},
			easing = "outQuart",
			bIgnoreConfig = true
		})
		:CreateAnimation(2, {
			easing = "outQuart",
			bIgnoreConfig = true
		})
		:CreateAnimation(1, {
			target = {continueButtonFade = 1},
			easing = "linear",
			bIgnoreConfig = true
		})
end

local fft, maxFFT = {}, 0
function PANEL:DrawBackgroundAndLogo(width, height)
	if not (self.bBackground) then
		return
	end

	surface.SetDrawColor(0, 0, 0, 255)
	surface.DrawRect(0, 0, width, height)

	maxFFT = 0
	if (self.introRisingFFT > 0 and IsValid(self.channel)) then
		self.channel:FFT(fft, FFT_2048)
		self.fft = fft

		for i = 1, #fft do
			local fft = fft[i]

			if (fft > maxFFT) then
				maxFFT = fft
			end
		end
	end

	-- text one
	surface.SetFont("ixIntroTitleFont")
	text = "Willkommen " .. (self.localPlayerNick or "")
	textWidth = surface.GetTextSize(text)

	surface.SetTextColor(255, 255, 255, self.introRisingText1 * 255)
	surface.SetTextPos((maxFFT or 0)*self.introRisingFFT*100 + width * 0.5 - textWidth * 0.5, (self.fft[4] or 0)*self.introRisingFFT*60 + height * 0.1)
	surface.DrawText(text)

	-- text two
	text = "zu"
	textWidth = surface.GetTextSize(text)

	surface.SetTextColor(255, 255, 255, self.introRisingText2 * 255)
	surface.SetTextPos((maxFFT or 0)*self.introRisingFFT*100 + width * 0.5 - textWidth * 0.5, (self.fft[4] or 0)*self.introRisingFFT*60 + height * 0.43)
	surface.DrawText(text)

	-- text three
	text = "Starwars RP"
	textWidth = surface.GetTextSize(text)

	surface.SetTextColor(255, 255, 255, self.introRisingText3 * 255)
	surface.SetTextPos((maxFFT or 0 )*self.introRisingFFT*100 + width * 0.5 - textWidth * 0.5, (self.fft[4]  or 0)*self.introRisingFFT*60 + height * 0.76)
	surface.DrawText(text)

	// second sequence
	surface.SetMaterial(self.backgroundMat)
	surface.SetDrawColor(255, 255, 255, self.backgroundFade * 255)
	surface.DrawTexturedRect(0, 0, width, height)

	local logoSizeX, logoSizeY = width*0.3, height*0.3
	local logoPosX, logoPosY = width*0.25 - logoSizeX*0.5, height*0.65 - logoSizeY*0.5

	surface.SetMaterial(self.logoMat)
	surface.SetDrawColor(255, 255, 255, self.backgroundFade * self.logoFade * 255)
	surface.DrawTexturedRect(logoPosX, logoPosY, logoSizeX, logoSizeY)

	if (self.continueButtonFade == 1) then
		self.pulse = self.pulse + 6 * FrameTime()

		if (self.pulse >= 360) then
			self.pulse = 0
		end
	end

	surface.SetFont("ixIntroSubtitleFont")
	local logoTextWidth, logoTextHeight = surface.GetTextSize(self.continueButtonText)
	surface.SetTextColor(255, 255, 255, self.backgroundFade * (self.continueButtonFade * 255 - (math.sin(self.pulse) * 100)), 0)
	surface.SetTextPos(width*0.5 - logoTextWidth*0.5, height*0.95 - logoTextHeight*0.5)
	surface.DrawText(self.continueButtonText)

end

local gradientMat = Material("vgui/gradient-d")
function PANEL:DrawLoadingScreen(width, height)
	if (self.loadingFade < 1) then
		return
	end

	surface.SetDrawColor(0, 0, 0, self.loadingFade * 255)
	surface.DrawRect(0, 0, width, height)

	surface.SetMaterial(self.loadingBackgroundMat)
	surface.SetDrawColor(255, 255, 255, self.backgroundFade * 255)
	surface.DrawTexturedRect(0, 0, width, height)

	local loadingSizeX, loadingSizeY = width*0.3, height*0.02
	local loadingPosX, loadingPosY = width*0.5 - loadingSizeX*0.5, height*0.9 - loadingSizeY*0.5


	surface.SetDrawColor(0, 0, 0, self.backgroundFade * 255)
	surface.DrawRect(loadingPosX, loadingPosY, loadingSizeX, loadingSizeY)
	surface.SetDrawColor(255, 255, 255, self.backgroundFade * 255)
	surface.DrawOutlinedRect(loadingPosX, loadingPosY, loadingSizeX, loadingSizeY)

	// surface.SetMaterial(gradientMat)
	surface.SetDrawColor(255, 255, 255, self.loadingAlpha)
	surface.DrawRect(loadingPosX, loadingPosY, loadingSizeX*(1-self.loadingFraction), loadingSizeY)

	surface.SetFont("ixIntroSubtitleFont")
	text = "Loading..."
	textWidth, textHeight = surface.GetTextSize(text)

	surface.SetTextColor(255, 255, 255, self.backgroundFade * 255)
	surface.SetTextPos(loadingPosX, loadingPosY - loadingSizeY*0.5 - textHeight)
	surface.DrawText(text)
end

function PANEL:Paint(width, height)
	local time = SysTime()
	local text = L("helix"):lower()
	local sunbeamOffsetEasing = math.sin(math.pi * self.sunbeamOffset)
	local textWidth, textHeight
	local fft

	self:DrawBackgroundAndLogo(width, height)
	self:DrawLoadingScreen(width, height)

	-- sunbeams
	if (self.sunbeamOffset > 0 and self.sunbeamOffset != 1) then
		DrawSunbeams(0.25, sunbeamOffsetEasing * 0.1, 0.05,
			(((width * 0.5 - 32 * 0.5) - 32) / width) + ((32 + 64) / width) * self.sunbeamOffset,
			0.5 + math.sin(time * 2) * 0.01
		)
	end
end

function PANEL:OnKeyCodePressed(key)
	if (key == KEY_SPACE and self.continueButtonPressed == false and self.continueButtonFade > 0.25) then
		self.continueButtonPressed = true

		sound.PlayFile("sounds/intro/depthbomb.mp3", "", function(channel, status, error)
			if (IsValid(channel)) then
				channel:SetVolume(self.volume)
			end
		end)

		self:CreateAnimation(2, {
			target = {loadingFade = 1, backgroundFade = 0, sunbeamOffset = 1 },
			easing = "inOutQuad",
			bIgnoreConfig = true,
			OnComplete = function(animation, panel)
				panel.bBackground = false
			end
		})
		:CreateAnimation(1, {
			target = {backgroundFade = 1},
			easing = "inOutQuad",
			bIgnoreConfig = true,
			OnComplete = function(animation, panel)
				panel.loadingCurtime = CurTime() + self.loadingDuration
				panel.loadingAlpha = 255
				panel.richText:Show()
			end
		})
		:CreateAnimation(self.loadingDuration, {
			easing = "inOutQuad",
			bIgnoreConfig = true,
			Think = function()
				self.loadingFraction = (self.loadingCurtime - CurTime()) / self.loadingDuration
			end,
			OnComplete = function(animation, panel)
				gui.EnableScreenClicker(false)
				panel:Remove()
			end
		})
	end
end

function PANEL:OnRemove()
	timer.Remove("ixIntroStart")

	if (IsValid(self.channel)) then
		self.channel:Stop()
	end

	if (IsValid(ix.gui.characterMenu)) then
		ix.gui.characterMenu:PlayMusic()
	end
end

function PANEL:Remove(bForce)
	if (bForce) then
		BaseClass.Remove(self)
		return
	end

	if (self.bClosing) then
		return
	end

	self.bClosing = true
	self.bBackground = nil
	self.alpha = self:GetAlpha()

	-- audio
	self:CreateAnimation(4.5, {
		index = 1,
		easing = "inOutQuad",
		target = {volume = 0},

		Think = function(anim, panel)
			if (IsValid(panel.channel)) then
				panel.channel:SetVolume(panel.volume)
			end

			self:SetAlpha(panel.alpha * panel.volume)
		end,

		OnComplete = function(anim, panel)
			timer.Simple(0, function()
				BaseClass.Remove(self)
			end)
		end
	})
end

vgui.Register("ixIntroStarwars", PANEL, "EditablePanel")
