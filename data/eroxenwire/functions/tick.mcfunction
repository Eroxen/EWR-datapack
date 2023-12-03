execute if score #debug eroxenwire.calc matches 1 run function eroxenwire:debug/tick

execute as @e[type=marker,tag=eroxenwire.redstone_link,tag=eroxenwire.redstone_link.type.waiting,predicate=eroxenwire:on_source_or_target] at @s run function eroxenwire:redstone_link/internal/waiting/wrong_state
execute as @e[type=marker,tag=eroxenwire.redstone_link,tag=eroxenwire.redstone_link.type.transmitter.binary,predicate=eroxenwire:binary_transmitter/wrong_state] at @s run function eroxenwire:redstone_link/internal/binary_transmitter/wrong_state
execute as @e[type=marker,tag=eroxenwire.redstone_link,tag=eroxenwire.redstone_link.type.transmitter.digital,predicate=eroxenwire:digital_transmitter/wrong_state] at @s run function eroxenwire:redstone_link/internal/digital_transmitter/wrong_state
execute as @e[type=marker,tag=eroxenwire.redstone_link,tag=eroxenwire.redstone_link.type.receiver,predicate=!eroxenwire:on_target] at @s run function eroxenwire:redstone_link/internal/receiver/wrong_state