lkxv_spawn = vector.new(0, 0, 0)

minetest.register_alias("mapgen_dirt_with_grass", "lkxv_nodes:grass")
minetest.register_alias("mapgen_dirt", "lkxv_nodes:dirt")

minetest.register_alias("mapgen_stone", "lkxv_nodes:stone")
minetest.register_alias("mapgen_sand", "lkxv_nodes:dirt")

minetest.register_alias("mapgen_water_source", "lkxv_nodes:water_source")
minetest.register_alias("mapgen_river_water_source", "lkxv_nodes:river_water_source")
minetest.register_alias("mapgen_lava_source", "air")

minetest.register_alias("mapgen_tree", "lkxv_nodes:dirt")
minetest.register_alias("mapgen_leaves", "lkxv_nodes:dirt")
minetest.register_alias("mapgen_apple", "lkxv_nodes:dirt")

minetest.register_biome({
    name = "grassland",
    node_stone = "lkxv_nodes:stone",
    node_top = "lkxv_nodes:grass",
    node_filler = "lkxv_nodes:dirt",
    node_riverbed = "lkxv_nodes:dirt",
    depth_riverbed = 2,
    depth_filler = 4,
    depth_top = 1,
    heat_point = 50,
    humidity_point = 50,
})
