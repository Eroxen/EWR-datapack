#####################################################################
# redstone_link/api/receive.mcfunction
# written by Eroxen
#
# Called on receiver redstone links when their channel updates.
#
# Scoreboard context:
# - #power eroxenwire.calc: power on the channel
#####################################################################

scoreboard players operation @s eroxenwire.power = #power eroxenwire.calc
data modify storage eroxified2:api phead.run_at_attachment set value "execute if block ~ ~ ~ minecraft:target run function eroxenwire:redstone_link/internal/receiver/place_target"
function eroxified2:phead/api/run_at_attachment
execute if score @s eroxenwire.power matches 0 run function eroxenwire:redstone_link/internal/apply_skin/off
execute if score @s eroxenwire.power matches 1.. run function eroxenwire:redstone_link/internal/apply_skin/on