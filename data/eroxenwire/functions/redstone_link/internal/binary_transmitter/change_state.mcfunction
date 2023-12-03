execute if predicate eroxenwire:binary_transmitter/powered run scoreboard players set @s eroxenwire.power 15
execute unless predicate eroxenwire:binary_transmitter/powered run scoreboard players set @s eroxenwire.power 0

execute if score @s eroxenwire.power matches 0 run function eroxenwire:redstone_link/internal/apply_skin/off
execute if score @s eroxenwire.power matches 1.. run function eroxenwire:redstone_link/internal/apply_skin/on

function eroxenwire:frequency/api/send_update