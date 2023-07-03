scoreboard players set changed eroxenwire.calc 0
execute if score changed eroxenwire.calc matches 0 if data entity @s attack if entity @s[tag=eroxenwire.redstone_link.interaction.a] store success score changed eroxenwire.calc run data modify entity @e[type=marker,tag=eroxenwire.redstone_link,distance=..0.1,limit=1] data.frequency.a set value "minecraft:air"
execute if score changed eroxenwire.calc matches 0 if data entity @s attack if entity @s[tag=eroxenwire.redstone_link.interaction.b] store success score changed eroxenwire.calc run data modify entity @e[type=marker,tag=eroxenwire.redstone_link,distance=..0.1,limit=1] data.frequency.b set value "minecraft:air"

execute if score changed eroxenwire.calc matches 0 if data entity @s interaction if entity @s[tag=eroxenwire.redstone_link.interaction.a] on target if data entity @s SelectedItem store success score changed eroxenwire.calc run data modify entity @e[type=marker,tag=eroxenwire.redstone_link,distance=..0.1,limit=1] data.frequency.a set from entity @s SelectedItem.id
execute if score changed eroxenwire.calc matches 0 if data entity @s interaction if entity @s[tag=eroxenwire.redstone_link.interaction.b] on target if data entity @s SelectedItem store success score changed eroxenwire.calc run data modify entity @e[type=marker,tag=eroxenwire.redstone_link,distance=..0.1,limit=1] data.frequency.b set from entity @s SelectedItem.id

data remove entity @s attack
data remove entity @s interaction
execute if score changed eroxenwire.calc matches 1 as @e[type=marker,tag=eroxenwire.redstone_link,distance=..0.1,limit=1] run function eroxenwire:redstone_link/update_frequency