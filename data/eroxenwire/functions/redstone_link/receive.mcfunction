execute store result entity @s data.power int 1 run scoreboard players get power eroxenwire.calc

execute if data entity @s data{power:0} run data modify entity @s data.powered set value 0b
execute unless data entity @s data{power:0} run data modify entity @s data.powered set value 1b

execute if data entity @s data{powered:0b} run data modify block ~ ~ ~ SkullOwner.Properties set from storage eroxenwire:calc skin_registry.redstone_link.off.Properties
execute if data entity @s data{powered:1b} run data modify block ~ ~ ~ SkullOwner.Properties set from storage eroxenwire:calc skin_registry.redstone_link.on.Properties

execute if block ~ ~ ~ minecraft:player_head run data modify entity @s data.attach set value "down"
execute if block ~ ~ ~ minecraft:player_wall_head[facing=north] run data modify entity @s data.attach set value "south"
execute if block ~ ~ ~ minecraft:player_wall_head[facing=east] run data modify entity @s data.attach set value "west"
execute if block ~ ~ ~ minecraft:player_wall_head[facing=south] run data modify entity @s data.attach set value "north"
execute if block ~ ~ ~ minecraft:player_wall_head[facing=west] run data modify entity @s data.attach set value "east"

execute if predicate eroxenwire:receiver/wrong_state if data entity @s data{attach:"down"} positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:target run function eroxenwire:redstone_link/receiver/place_target
execute if predicate eroxenwire:receiver/wrong_state if data entity @s data{attach:"south"} positioned ~ ~ ~1 if block ~ ~ ~ minecraft:target run function eroxenwire:redstone_link/receiver/place_target
execute if predicate eroxenwire:receiver/wrong_state if data entity @s data{attach:"west"} positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:target run function eroxenwire:redstone_link/receiver/place_target
execute if predicate eroxenwire:receiver/wrong_state if data entity @s data{attach:"north"} positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:target run function eroxenwire:redstone_link/receiver/place_target
execute if predicate eroxenwire:receiver/wrong_state if data entity @s data{attach:"east"} positioned ~1 ~ ~ if block ~ ~ ~ minecraft:target run function eroxenwire:redstone_link/receiver/place_target