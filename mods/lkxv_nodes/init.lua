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


minetest.register_node("lkxv_nodes:water", {
    description = "Water",
    drawtype = "liquid",
    tiles = {
        {
            name = "lkxv_water_source.png",
            backface_culling = false,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 2.0,
            },
        },
    },
    special_tiles = {
        {
            name = "lkxv_water_source.png",
            backface_culling = false,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 2.0,
            },
        },
        {
            name = "lkxv_water_source.png",
            backface_culling = true,
        },
    },
    alpha = 160,
    paramtype = "light",
    walkable = false,
    pointable = false,
    diggable = false,
    buildable_to = true,
    is_ground_content = false,
    liquidtype = "source",
    liquid_alternative_flowing = "lkxv_nodes:water",
    liquid_alternative_source = "lkxv_nodes:water",
    liquid_viscosity = 1,
    liquid_renewable = false,
    liquid_range = 2,
    post_effect_color = {a = 103, r = 30, g = 60, b = 90},
    groups = {water = 3, liquid = 3, cools_lava = 1},
})

minetest.register_node("lkxv_nodes:water", {
    description = "Flowing Water",
    drawtype = "flowingliquid",
    tiles = {"lkxv_water_source.png"},
    special_tiles = {
        {
            name = "lkxv_water_source.png",
            backface_culling = false,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 0.8,
            },
        },
        {
            name = "lkxv_water_source.png",
            backface_culling = true,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 0.8,
            },
        },
    },
    alpha = 160,
    paramtype = "light",
    paramtype2 = "flowingliquid",
    walkable = false,
    pointable = false,
    diggable = false,
    buildable_to = true,
    is_ground_content = false,
    liquidtype = "flowing",
    liquid_alternative_flowing = "lkxv_nodes:water",
    liquid_alternative_source = "lkxv_nodes:water",
    liquid_viscosity = 1,
    liquid_renewable = false,
    liquid_range = 2,
    post_effect_color = {a = 103, r = 30, g = 60, b = 90},
    groups = {water = 3, liquid = 3, cools_lava = 1, not_in_creative_inventory = 1},
})