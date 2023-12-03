scoreboard players operation #old eroxenwire.frequency = @s eroxenwire.frequency
function eroxenwire:redstone_link/internal/frequency/calculate

execute if entity @s[tag=eroxenwire.redstone_link.type.transmitter.binary] run function eroxenwire:redstone_link/internal/binary_transmitter/change_state
execute if entity @s[tag=eroxenwire.redstone_link.type.transmitter.digital] run function eroxenwire:redstone_link/internal/digital_transmitter/change_state
execute if entity @s[tag=eroxenwire.redstone_link.type.receiver] run function eroxenwire:frequency/api/send_update

execute if entity @s[tag=eroxenwire.redstone_link.type.transmitter] run function eroxenwire:frequency/api/send_update_on_old