#schedule function eroxenwire:clock_8t 8t replace

# dynamically spawns and kills interactions and item displays to save lag
# disabled because this caused sculk sensors to trigger :(

execute as @e[type=marker,tag=eroxenwire.redstone_link,tag=!eroxenwire.redstone_link.in_player_range] at @s if entity @e[type=player,distance=..32] run function eroxenwire:redstone_link/enter_player_range
execute as @e[type=marker,tag=eroxenwire.redstone_link,tag=eroxenwire.redstone_link.in_player_range] at @s unless entity @e[type=player,distance=..32] run function eroxenwire:redstone_link/leave_player_range