#####################################################################
# frequency/api/send_update_on_old.mcfunction
# written by Eroxen
#
# Sends an update on the #old frequency.
#####################################################################

scoreboard players set #power eroxenwire.calc 0
scoreboard players operation #compare eroxenwire.frequency = #old eroxenwire.frequency

scoreboard players operation #power eroxenwire.calc > @e[type=marker,tag=eroxenwire.redstone_link.type.transmitter,predicate=eroxenwire:same_frequency] eroxenwire.power
execute if score #debug eroxenwire.calc matches 1 run tellraw @a [{"text":"[eroxenwire] "},{"score":{"name":"#power","objective":"eroxenwire.calc"},"color":"red"},{"text":" @ "},{"score":{"name":"#compare","objective":"eroxenwire.frequency"},"color":"light_purple"}]
execute as @e[type=marker,tag=eroxenwire.redstone_link.type.receiver,predicate=eroxenwire:same_frequency] at @s if predicate eroxified2:phead/head run function eroxenwire:redstone_link/api/receive