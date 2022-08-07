local nodes = {}
local players = {}


minetest.register_abm({
	nodenames = { "fire:permanent_flame" },
	interval = 1,
	chance = 1,
	catch_up = false,
	action = function(pos, node)
		minetest.add_particlespawner({
			pos = { min = vector.add(pos, vector.new(-0.5, -0.5, -0.5)), max = vector.add(pos, vector.new(0.5, 0.5, 0.5)) },
			vel = { min = vector.new(-0.5, 0.5, -0.5), max = vector.new( 0.5, 0.5, 0.5) },
			acc = vector.new(0, 0.1, 0),
			time = 1,
			amount = 100,
			exptime = 1,
			collisiondetection = true,
			collision_removal = true,
			glow = 14,
			texpool = {
				{ name = "flame_spark.png^[multiply:#f00", alpha_tween = { 1, 0 },	scale_tween = { 0.5, 0 }, blend = "screen" },
				{ name = "flame_spark.png^[multiply:#c00", alpha_tween = { 1, 0 },	scale_tween = { 0.5, 0 }, blend = "screen" },
				{ name = "flame_spark.png^[multiply:#800", alpha_tween = { 1, 0 },	scale_tween = { 0.5, 0 }, blend = "screen" },
				{ name = "flame_spark.png^[multiply:#ff0", alpha_tween = { 1, 0 },	scale_tween = { 0.5, 0 }, blend = "screen" },
				{ name = "flame_spark.png^[multiply:#fc0", alpha_tween = { 1, 0 },	scale_tween = { 0.5, 0 }, blend = "screen" },
				{ name = "flame_spark.png^[multiply:#cc0", alpha_tween = { 1, 0 },	scale_tween = { 0.5, 0 }, blend = "screen" },
				{ name = "flame_spark.png^[multiply:#f80", alpha_tween = { 1, 0 },	scale_tween = { 0.5, 0 }, blend = "screen" },
			}
		})
	end
})

minetest.register_abm({
	nodenames = { "flowers:tulip_black" },
	interval = 1,
	chance = 1,
	catch_up = false,
	action = function(pos, node)
		minetest.add_particlespawner({
			pos = { min = vector.add(pos, vector.new(-0.05, -0.2, -0.05)), max = vector.add(pos, vector.new(0.05, 0.0, 0.05)) },
			vel = { min = vector.new(-0.1, 0.0, -0.1), max = vector.new( 0.1, 0.0, 0.1) },
			acc = vector.new(0, 0.2, 0),
			time = 1,
			amount = 3,
			exptime = 1,
			collisiondetection = true,
			collision_removal = true,
			glow = 14,
			texpool = {
				{ name = "flame_spark.png^[multiply:#001010", scale=16, blend = "screen" },
				{ name = "flame_spark.png^[multiply:#000808", scale=16, blend = "screen" },
				{ name = "flame_spark.png^[multiply:#000c10", scale=16, blend = "screen" },
				{ name = "flame_spark.png^[multiply:#000810", scale=16, blend = "screen" },
			}
		})
	end
})

minetest.register_abm({
	nodenames = { "default:torch" },
	interval = 1,
	chance = 1,
	catch_up = false,
	action = function(pos, node)
		minetest.add_particlespawner({
			pos = { min = vector.add(pos, vector.new(-0.1, 0.45, -0.1)), max = vector.add(pos, vector.new(0.1, 0.5, 0.1)) },
			vel = { min = vector.new(0, 0, 0), max = vector.new( 0, 0.15, 0) },
			acc = { min = vector.new(0, 0.1, 0), max = vector.new(0, 0.3, 0) },
			time = 1,
			amount = 2,
			exptime = 1,
			collisiondetection = true,
			collision_removal = true,
			glow = 14,
			texpool = {
				{ name = "torch_spark.png", alpha_tween = { 1, 0 }, scale = 0.3 },
				{ name = "torch_spark.png^[multiply:#ddd", alpha_tween = { 1, 0 }, scale = 0.5 },
			}
		})
	end
})

