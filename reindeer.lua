-- Reindeer Mob Definition for KY_Christmas
-- Based on mobs_redo API

mobs:register_mob("ky_christmas:reindeer", {
	type = "animal",
	passive = true,
	runaway = true,
	hp_min = 10,
	hp_max = 15,
	armor = 100,
	collisionbox = {-4.8, 0, -4.8, 4.8, 14.4, 4.8},
	visual = "mesh",
	visual_size = {x = 12, y = 12},
	mesh = "reindeer.gltf",
	rotate = 180,
	textures = {
		{"colormap.png"},
	},
	makes_footstep_sound = true,
	walk_velocity = 1.5,
	run_velocity = 3.0,
	jump = true,
	jump_height = 1.5,
	walk_chance = 50,
	-- Single continuous timeline animation with keyframes specified in seconds
	animation = {
		speed_normal = 1,
		speed_run = 2,
		stand_start = 0.0,
		stand_end = 0.95,
		walk_start = 1.0,
		walk_end = 1.95,
		run_start = 2.0,
		run_end = 2.95,
		die_start = 3.0,
		die_end = 3.35,
	},
})

mobs:register_egg("ky_christmas:reindeer", "Reindeer", "reindeer.png", 0)
