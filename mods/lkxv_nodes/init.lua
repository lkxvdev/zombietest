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