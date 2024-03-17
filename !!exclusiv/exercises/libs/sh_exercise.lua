ix.exercises = ix.exercises or {}
ix.exercises.list = ix.exercises.list or {}

function ix.exercises:Register(exercise, animations, timing, attribute)
	ix.exercises.list[exercise] = {
		name = exercise,
		animations = animations,
		timing = timing,
		attribute = attribute
	}

	ix.config.Add(exercise .. "AttributePoints", 0.01, "How many attribute points does this exercise give per every successful QTE?", nil, {
		data = {min = 0, max = 10, decimals = 3},
		category = "Exercises"
	})
end

ix.exercises:Register("Liegestütz", {
	start = "pushups_start",
	loop = "pushups_loop",
	end_ = "pushups_end"
	}, {
	[1] = {
		key = KEY_E,
		timing = 0.5
	},
	[2] = {
		key = KEY_B,
		timing = 0.5
	},
}, "str")

ix.exercises:Register("squads", {
	loop = "squads_loop_edit",
	}, {
	[1] = {
		key = KEY_R,
		timing = 0.75
	},
	[2] = {
		key = KEY_N,
		timing = 0.4
	},
}, "str")

ix.exercises:Register("Hampelmann", {
	loop = "Jumping_Jacks_Loop_Edit",
	}, {
	[1] = {
		key = KEY_R,
		timing = 0.75
	},
	[2] = {
		key = KEY_N,
		timing = 0.4
	},
}, "str")
ix.exercises:Register("Situps", {
	start = "situps_start_edit",
	loop = "situps_loop_edit",
	end_ = "situps_end_edit"
	}, {
	[1] = {
		key = KEY_E,
		timing = 0.5
	},
	[2] = {
		key = KEY_B,
		timing = 0.5
	},
}, "str")