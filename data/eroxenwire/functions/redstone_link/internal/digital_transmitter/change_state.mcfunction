execute if predicate eroxenwire:digital_transmitter/on_power_0 run scoreboard players set @s eroxenwire.power 0
execute if predicate eroxenwire:digital_transmitter/on_power_1 run scoreboard players set @s eroxenwire.power 1
execute if predicate eroxenwire:digital_transmitter/on_power_2 run scoreboard players set @s eroxenwire.power 2
execute if predicate eroxenwire:digital_transmitter/on_power_3 run scoreboard players set @s eroxenwire.power 3
execute if predicate eroxenwire:digital_transmitter/on_power_4 run scoreboard players set @s eroxenwire.power 4
execute if predicate eroxenwire:digital_transmitter/on_power_5 run scoreboard players set @s eroxenwire.power 5
execute if predicate eroxenwire:digital_transmitter/on_power_6 run scoreboard players set @s eroxenwire.power 6
execute if predicate eroxenwire:digital_transmitter/on_power_7 run scoreboard players set @s eroxenwire.power 7
execute if predicate eroxenwire:digital_transmitter/on_power_8 run scoreboard players set @s eroxenwire.power 8
execute if predicate eroxenwire:digital_transmitter/on_power_9 run scoreboard players set @s eroxenwire.power 9
execute if predicate eroxenwire:digital_transmitter/on_power_10 run scoreboard players set @s eroxenwire.power 10
execute if predicate eroxenwire:digital_transmitter/on_power_11 run scoreboard players set @s eroxenwire.power 11
execute if predicate eroxenwire:digital_transmitter/on_power_12 run scoreboard players set @s eroxenwire.power 12
execute if predicate eroxenwire:digital_transmitter/on_power_13 run scoreboard players set @s eroxenwire.power 13
execute if predicate eroxenwire:digital_transmitter/on_power_14 run scoreboard players set @s eroxenwire.power 14
execute if predicate eroxenwire:digital_transmitter/on_power_15 run scoreboard players set @s eroxenwire.power 15

execute if score @s eroxenwire.power matches 0 run function eroxenwire:redstone_link/internal/apply_skin/off
execute if score @s eroxenwire.power matches 1.. run function eroxenwire:redstone_link/internal/apply_skin/on

function eroxenwire:frequency/api/send_update