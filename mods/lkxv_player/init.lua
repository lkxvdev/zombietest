minetest.register_on_joinplayer(function(player)
    player_api.set_textures(player, { "lkxv_player.png" })

    player:hud_set_flags({
        minimap = true,
        minimap_radar = true,
    })

    player:set_properties({
       zoom_fov = 15,
    })

    player:hud_add({
        name = "Health Bar",
        hud_elem_type = "statbar",
        position = { x = 0.337, y = 0.86 },
        offset = { x = 0, y = 0 },
        text = "lkxv_heart.png",
        number = 20,
        direction = 0,
   })
    
end)

minetest.register_tool(":", {
    wield_image = "lkxv_hand.png",
    wield_scale = { x = 1, y = 1.5, z = 4 },
    range = 3,
    groups = { not_in_creative_inventory = 1 },
    tool_capabilities = {
        full_punch_interval = 1.0,
        max_drop_level = 1,
        groupcaps = {
            oddly_breakable_by_hand = {
                maxlevel = 1,
                uses = 0,
                times = { 1, 2, 4 },
            },
        }
    },
})

