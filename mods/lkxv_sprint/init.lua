local SPRINT_SPEED = 1.4

--[[
local SPRINT_STAMINA = 2
local SPRINT_JUMP = 1.5
local STAMINA_DECREASE = 1 
local STAMINA_REGEN = 0.5
--]]

minetest.register_globalstep(function(dtime)
    for _, player in ipairs(minetest.get_connected_players()) do
        local control = player:get_player_control()
        if control.aux1 then
            player:set_physics_override({ speed = SPRINT_SPEED })
        else
            player:set_physics_override({ speed = 0.95 })
        end
    end
end)