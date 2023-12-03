tag @s remove eroxenwire.redstone_link.type.receiver
scoreboard players set @s eroxenwire.power 0
data modify storage eroxified2:api phead.run_at_attachment set value "execute if block ~ ~ ~ minecraft:target run function eroxenwire:redstone_link/internal/receiver/place_target"
function eroxified2:phead/api/run_at_attachment
scoreboard players reset @s eroxenwire.power