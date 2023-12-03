execute if score #clicked_slot eroxenwire.calc matches 1 run data modify entity @s data.frequency.a set value "minecraft:air"
execute if score #clicked_slot eroxenwire.calc matches 2 run data modify entity @s data.frequency.b set value "minecraft:air"

execute if score #clicked_slot eroxenwire.calc matches 1 on vehicle on passengers if entity @s[type=item_display,tag=eroxenwire.redstone_link.left_item] run data modify entity @s item.id set value "minecraft:air"
execute if score #clicked_slot eroxenwire.calc matches 2 on vehicle on passengers if entity @s[type=item_display,tag=eroxenwire.redstone_link.right_item] run data modify entity @s item.id set value "minecraft:air"

execute if data entity @s data.frequency{valid:1b} run function eroxenwire:redstone_link/internal/frequency/become_invalid

playsound minecraft:entity.item_frame.remove_item block @a[distance=..16] ~ ~ ~ 1 1