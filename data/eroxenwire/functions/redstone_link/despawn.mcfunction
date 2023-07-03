function eroxenwire:redstone_link/leave_player_range

execute if entity @s[tag=eroxenwire.redstone_link.transmitter,tag=eroxenwire.redstone_link.valid_frequency] run kill @s
execute if entity @s[tag=eroxenwire.redstone_link.transmitter,tag=eroxenwire.redstone_link.valid_frequency] run function eroxenwire:frequency/send_update
execute if entity @s[tag=eroxenwire.redstone_link.receiver,tag=eroxenwire.redstone_link.valid_frequency] run function eroxenwire:redstone_link/receiver/reset_target