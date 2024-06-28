lkxv_spawn = vector.new(0, 0, 0)

minetest.register_alias("mapgen_stone", "lkxv_nodes:grass")
minetest.register_alias("mapgen_water_source", "lkxv_nodes:dirt")
minetest.register_alias("mapgen_lava_source", "lkxv_nodes:dirt")
minetest.register_alias("mapgen_dirt", "lkxv_nodes:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "lkxv_nodes:grass")
minetest.register_alias("mapgen_sand", "lkxv_nodes:dirt")

minetest.register_alias("mapgen_tree", "lkxv_nodes:dirt")
minetest.register_alias("mapgen_leaves", "lkxv_nodes:dirt")
minetest.register_alias("mapgen_apple", "lkxv_nodes:dirt")

local function find_spawn()
    local range = 1 
    local result
    local y
    local x
    local z
    repeat -- znowu patrz
        if range >= 4000 then
            return vector.new(0,0,0)
        end
        x = math.random(-range, range)
        z = math.random(-range, range)
        y = minetest.get_spawn_level(x, z)
        range = range+1
    until y ~= nil
    return vector.new(x, y-3, z)
end

