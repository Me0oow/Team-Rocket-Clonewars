-- probably should have used coroutines and active net messaging instead of setvars, but it's good anyway.
function ix.exercises:Start(client, exercise)
	if client:GetNetVar("ixExerciseLoop", false) then return end
	if client.ixExerciseEndAnimation then return end

	client:SetAbsVelocity(Vector(0, 0, 0))

	local selectedExercise = ix.exercises.list[exercise]

	netstream.Start(client, "ixExerciseStart")
	client:Freeze(true)

	if selectedExercise.animations.start and selectedExercise.animations.end_ then
		client:ForceSequence(selectedExercise.animations.start, function()
			client:SelectWeapon("ix_hands")
			client:SetNetVar("ixExerciseLoop", true)
			client.ixClickEvent = {}

			ix.exercises:InitiateClickTimers(client, exercise)

			client:ForceSequence(selectedExercise.animations.loop, function()
				client.ixExerciseEndAnimation = true
				client:ForceSequence(selectedExercise.animations.end_, function()
					client.ixExerciseEndAnimation = nil
				end)
			end, 0)
		end)
	else
		client:SetNetVar("ixExerciseLoop", true)
		client.ixClickEvent = {}
		ix.exercises:InitiateClickTimers(client, exercise)

		client:ForceSequence(selectedExercise.animations.loop, nil, 0)
	end
end

function ix.exercises:End(client)
	client:SetNetVar("ixExerciseLoop", nil)
	client:LeaveSequence()
	client:SetNetVar("ixExerciseEvent", nil)
	client.ixClickEvent = nil
	client.ixClickQueue = nil

	timer.Simple(0.25, function()
		if !IsValid(client) then return end
		client:Freeze(false)
	end)
end

function ix.exercises:CreateTimer(client, key, time, attribute, exercise)
	client:SetNetVar("ixExerciseEvent", {key = key, successful = false})
	timer.Simple(time, function()
		if !IsValid(client) or !client:Alive() or !client:GetNetVar("ixExerciseLoop", false) then return end

		if client.ixClickEvent[client.ixClickQueue].successful then
			local character = client:GetCharacter()
			character:UpdateAttrib(attribute, ix.config.Get(exercise .. "AttributePoints", 0.5))
		end

		if client.ixClickEvent[client.ixClickQueue + 1] then
			client.ixClickQueue = client.ixClickQueue + 1
		else
			client.ixClickQueue = 1
		end

		client.ixClickEvent[client.ixClickQueue].successful = false

		ix.exercises:CreateTimer(client, client.ixClickEvent[client.ixClickQueue].key, client.ixClickEvent[client.ixClickQueue].timing, attribute, exercise)
	end)
end

function ix.exercises:InitiateClickTimers(client, exercise)
	local selectedExercise = ix.exercises.list[exercise]

	for k, v in pairs(selectedExercise.timing) do
		if !istable(v) then continue end
		client.ixClickEvent[#client.ixClickEvent + 1] = {key = v.key, timing = v.timing, successful = false}
	end

	client.ixClickQueue = 1
	ix.exercises:CreateTimer(client, client.ixClickEvent[1].key, client.ixClickEvent[1].timing, selectedExercise.attribute, selectedExercise.name)
end