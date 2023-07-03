scoreboard players operation old_frequency eroxenwire.calc = @s eroxenwire.calc
execute if entity @s[tag=!eroxenwire.redstone_link.valid_frequency] run scoreboard players reset old_frequency eroxenwire.calc

data modify entity @s data.old_frequency set from entity @s data.frequency
function eroxenwire:redstone_link/update_item_displays

tag @s add eroxenwire.redstone_link.valid_frequency
execute if data entity @s data.frequency{a:"minecraft:air"} run tag @s remove eroxenwire.redstone_link.valid_frequency
execute if data entity @s data.frequency{b:"minecraft:air"} run tag @s remove eroxenwire.redstone_link.valid_frequency

execute if entity @s[tag=!eroxenwire.redstone_link.valid_frequency] run scoreboard players reset @s eroxenwire.calc

execute if entity @s[tag=eroxenwire.redstone_link.valid_frequency] run data modify storage eroxenwire:calc frequency set from entity @s data.frequency
execute if entity @s[tag=eroxenwire.redstone_link.valid_frequency] run function eroxenwire:frequency/calculate
execute if entity @s[tag=eroxenwire.redstone_link.valid_frequency] run scoreboard players operation @s eroxenwire.calc = frequency eroxenwire.calc
execute if entity @s[tag=eroxenwire.redstone_link.valid_frequency] run function eroxenwire:frequency/send_update

execute if score old_frequency eroxenwire.calc matches 0.. run scoreboard players operation frequency eroxenwire.calc = old_frequency eroxenwire.calc
execute if score old_frequency eroxenwire.calc matches 0.. run function eroxenwire:frequency/send_update

execute if entity @s[tag=eroxenwire.redstone_link.receiver,tag=!eroxenwire.redstone_link.valid_frequency] run scoreboard players set power eroxenwire.calc 0
execute if entity @s[tag=eroxenwire.redstone_link.receiver,tag=!eroxenwire.redstone_link.valid_frequency] run function eroxenwire:redstone_link/receive
