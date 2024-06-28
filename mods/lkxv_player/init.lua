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

-- 