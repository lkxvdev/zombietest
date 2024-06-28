minetest.register_node("lkxv_nodes:dirt", {
    description = "Dirt",
    drawtype = "normal",
    tiles = { "lkxv_dirt.png" },
    stack_max = "64",
    diggable = true,
    groups = { oddly_breakable_by_hand = 1 },
})

minetest.register_node("lkxv_nodes:grass", {
	tiles = { "lkxv_grass_top.png", "lkxv_dirt.png", "lkxv_grass_side.png" },
	description = "Grass",
	drop = "lkxv_nodes:dirt",
	drawtype = "normal",
    stack_max = "64",
    diggable = true,
	groups = { oddly_breakable_by_hand = 1 },
})

minetest.register_node("lkxv_nodes:stone", {
	tiles = { "lkxv_stone.png" },
	description = "Stone",
	drop = "lkxv_nodes:stone", -- Drop cobblestone
	drawtype = "normal",
    stack_max = "64",
    diggable = true,
	groups = { cracky = 1 },
})

minetest.register_node("lkxv_nodes:water_source", {
	description = "Water Source",
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "lkxv_water_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "lkxv_water_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "lkxv_nodes:water_flowing",
	liquid_alternative_source = "lkxv_nodes:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = { water = 3, liquid = 3, cools_lava = 1 },
})

minetest.register_node("lkxv_nodes:water_flowing", {
	description = "Flowing Water",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = { "lkxv_water.png" },
	special_tiles = {
		{
			name = "lkxv_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
		{
			name = "lkxv_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "lkxv_nodes:water_flowing",
	liquid_alternative_source = "lkxv_nodes:water_source",
	liquid_viscosity = 1,
	post_effect_color = { a = 103, r = 30, g = 60, b = 90 },
	groups = { water = 3, liquid = 3, not_in_creative_inventory = 1, cools_lava = 1 },
})


minetest.register_node("lkxv_nodes:river_water_source", {
	description = "River Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "lkxv_water_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "lkxv_water_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "lkxv_nodes:river_water_flowing",
	liquid_alternative_source = "lkxv_nodes:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = { a = 103, r = 30, g = 76, b = 90 },
	groups = { water = 3, liquid = 3, cools_lava = 1 },
})

minetest.register_node("lkxv_nodes:river_water_flowing", {
	description = "Flowing River Water",
	drawtype = "flowingliquid",
	tiles = { "lkxv_water.png" },
	special_tiles = {
		{
			name = "lkxv_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
		{
			name = "lkxv_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "lkxv_nodes:river_water_flowing",
	liquid_alternative_source = "lkxv_nodes:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = { a = 103, r = 30, g = 76, b = 90 },
	groups = { water = 3, liquid = 3, not_in_creative_inventory = 1, cools_lava = 1 },
})