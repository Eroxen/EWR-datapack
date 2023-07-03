execute if predicate eroxenwire:binary_transmitter/powered run data modify entity @s data.powered set value 1b
execute unless predicate eroxenwire:binary_transmitter/powered run data modify entity @s data.powered set value 0b

execute if data entity @s data{powered:0b} run data modify entity @s data.power set value 0
execute if data entity @s data{powered:1b} run data modify entity @s data.power set value 15

execute if data entity @s data{powered:0b} run data modify block ~ ~ ~ SkullOwner.Properties set from storage eroxenwire:calc skin_registry.redstone_link.off.Properties
execute if data entity @s data{powered:1b} run data modify block ~ ~ ~ SkullOwner.Properties set from storage eroxenwire:calc skin_registry.redstone_link.on.Properties

execute if entity @s[tag=eroxenwire.redstone_link.valid_frequency] run scoreboard players operation frequency eroxenwire.calc = @s eroxenwire.calc
execute if entity @s[tag=eroxenwire.redstone_link.valid_frequency] run function eroxenwire:frequency/send_update