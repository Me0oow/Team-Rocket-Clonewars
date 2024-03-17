netstream.Hook("ixExerciseStart", function()
	if !ix.option.Get("thirdpersonEnabled", false) then
		LocalPlayer():ConCommand("ix_togglethirdperson")
	end

	vgui.Create("ixExercisePanel")
end)

function PLUGIN:PlayerButtonDown(client, button)
	if button != KEY_G then return end

	if !IsFirstTimePredicted() then
		return
	end

	if !IsValid(ix.gui.exerciseWheel) then
		vgui.Create("ixExerciseWheel")
	end
end