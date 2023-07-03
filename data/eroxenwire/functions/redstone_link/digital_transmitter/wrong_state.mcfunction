execute if predicate eroxenwire:digital_transmitter/on_power_0 run data modify entity @s data.power set value 0
execute if predicate eroxenwire:digital_transmitter/on_power_1 run data modify entity @s data.power set value 1
execute if predicate eroxenwire:digital_transmitter/on_power_2 run data modify entity @s data.power set value 2
execute if predicate eroxenwire:digital_transmitter/on_power_3 run data modify entity @s data.power set value 3
execute if predicate eroxenwire:digital_transmitter/on_power_4 run data modify entity @s data.power set value 4
execute if predicate eroxenwire:digital_transmitter/on_power_5 run data modify entity @s data.power set value 5
execute if predicate eroxenwire:digital_transmitter/on_power_6 run data modify entity @s data.power set value 6
execute if predicate eroxenwire:digital_transmitter/on_power_7 run data modify entity @s data.power set value 7
execute if predicate eroxenwire:digital_transmitter/on_power_8 run data modify entity @s data.power set value 8
execute if predicate eroxenwire:digital_transmitter/on_power_9 run data modify entity @s data.power set value 9
execute if predicate eroxenwire:digital_transmitter/on_power_10 run data modify entity @s data.power set value 10
execute if predicate eroxenwire:digital_transmitter/on_power_11 run data modify entity @s data.power set value 11
execute if predicate eroxenwire:digital_transmitter/on_power_12 run data modify entity @s data.power set value 12
execute if predicate eroxenwire:digital_transmitter/on_power_13 run data modify entity @s data.power set value 13
execute if predicate eroxenwire:digital_transmitter/on_power_14 run data modify entity @s data.power set value 14
execute if predicate eroxenwire:digital_transmitter/on_power_15 run data modify entity @s data.power set value 15

execute if data entity @s data{power:0} run data modify entity @s data.powered set value 0b
execute unless data entity @s data{power:0} run data modify entity @s data.powered set value 1b

execute if data entity @s data{powered:0b} run data modify block ~ ~ ~ SkullOwner.Properties set from storage eroxenwire:calc skin_registry.redstone_link.off.Properties
execute if data entity @s data{powered:1b} run data modify block ~ ~ ~ SkullOwner.Properties set from storage eroxenwire:calc skin_registry.redstone_link.on.Properties

execute if entity @s[tag=eroxenwire.redstone_link.valid_frequency] run scoreboard players operation frequency eroxenwire.calc = @s eroxenwire.calc
execute if entity @s[tag=eroxenwire.redstone_link.valid_frequency] run function eroxenwire:frequency/send_update