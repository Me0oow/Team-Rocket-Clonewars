local PLUGIN = PLUGIN

function PLUGIN:CreateSprintTimer(client)
	local steamID = client:SteamID64()
	timer.Create("sprintTimer" .. steamID, 1, 0, function()
		if !IsValid(client) or !client:IsPlayer() then
			timer.Remove("sprintTimer" .. steamID)

			return
		end

		if !client:Alive() then return end

		local character = client:GetCharacter()

		if client:IsSprinting() then
			client.ixSprintCount = client.ixSprintCount and client.ixSprintCount + 1 or 1

			if client.ixSprintCount > 2 then
				character:UpdateAttrib("stm", ix.config.Get("sprintAttributePoints", 0.5))

				client.ixSprintCount = 1
			end
		end
	end)
end

function PLUGIN:PlayerDeath( client )
	if client:GetNetVar("ixExerciseLoop", false) then
		ix.exercises:End(client)
	end
end

function PLUGIN:CharacterLoaded(character)
	local client = character:GetPlayer()

	PLUGIN:CreateSprintTimer(client)
	if client:GetNetVar("ixExerciseLoop", false) then
		ix.exercises:End(client)
	end
end

function PLUGIN:PlayerSwitchWeapon(client, oldWeapon, newWeapon)
	if client:GetNetVar("ixExerciseLoop", false) then
		return true
	end
end

function PLUGIN:PlayerButtonDown(client, button)
	if client:GetNetVar("ixExerciseLoop", false) and button == KEY_SPACE then
		ix.exercises:End(client)

		return
	end

	if client.ixClickQueue and client.ixClickEvent and client.ixClickEvent[client.ixClickQueue].key == button then
		client.ixClickEvent[client.ixClickQueue].successful = !client.ixClickEvent[client.ixClickQueue].successful
		client:SetNetVar("ixExerciseEvent", {key = button, successful = client.ixClickEvent[client.ixClickQueue].successful})

		if client.ixClickEvent[client.ixClickQueue].successful then
			local filter = RecipientFilter()
			filter:AddPlayer(client)
			client:EmitSound(ix.config.Get("exerciseSuccessSound", "everfall/republiccommando/int_gen_button_04.wav"), 100, 100, 1, CHAN_AUTO, nil, nil, filter)
		end
	end
end

netstream.Hook("ixExerciseStart", function(client, exercise)
	client:StartExercise(exercise)
end)