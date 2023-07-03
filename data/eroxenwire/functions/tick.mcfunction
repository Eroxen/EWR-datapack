execute as @e[type=marker,tag=eroxenwire.redstone_link,tag=eroxenwire.redstone_link.none_type,predicate=eroxenwire:on_source_or_target] at @s run function eroxenwire:redstone_link/none_type/wrong_type

execute as @e[type=marker,tag=eroxenwire.redstone_link,tag=eroxenwire.redstone_link.transmitter.binary,predicate=!eroxenwire:on_binary_source] at @s run function eroxenwire:redstone_link/binary_transmitter/wrong_type
execute as @e[type=marker,tag=eroxenwire.redstone_link,tag=eroxenwire.redstone_link.transmitter.binary,predicate=eroxenwire:binary_transmitter/wrong_state] at @s run function eroxenwire:redstone_link/binary_transmitter/wrong_state

execute as @e[type=marker,tag=eroxenwire.redstone_link,tag=eroxenwire.redstone_link.transmitter.digital,predicate=!eroxenwire:on_digital_source] at @s run function eroxenwire:redstone_link/digital_transmitter/wrong_type
execute as @e[type=marker,tag=eroxenwire.redstone_link,tag=eroxenwire.redstone_link.transmitter.digital,predicate=eroxenwire:digital_transmitter/wrong_state] at @s run function eroxenwire:redstone_link/digital_transmitter/wrong_state

execute as @e[type=marker,tag=eroxenwire.redstone_link,tag=eroxenwire.redstone_link.receiver,predicate=!eroxenwire:on_target] at @s run function eroxenwire:redstone_link/receiver/wrong_type