scoreboard players set power eroxenwire.calc 0
execute as @e[type=marker,tag=eroxenwire.redstone_link.transmitter,tag=eroxenwire.redstone_link.valid_frequency] if score @s eroxenwire.calc = frequency eroxenwire.calc at @s if predicate eroxified:player_head_blocks/player_head run function eroxenwire:redstone_link/transmit
execute as @e[type=marker,tag=eroxenwire.redstone_link.receiver,tag=eroxenwire.redstone_link.valid_frequency] if score @s eroxenwire.calc = frequency eroxenwire.calc at @s if predicate eroxified:player_head_blocks/player_head run function eroxenwire:redstone_link/receive