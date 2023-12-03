execute if score #clicked_slot eroxenwire.calc matches 1 run data modify entity @s data.frequency.a set from storage eroxenwire:calc temp
execute if score #clicked_slot eroxenwire.calc matches 2 run data modify entity @s data.frequency.b set from storage eroxenwire:calc temp

execute if score #clicked_slot eroxenwire.calc matches 1 on vehicle on passengers if entity @s[type=item_display,tag=eroxenwire.redstone_link.left_item] run data modify entity @s item.id set from storage eroxenwire:calc temp
execute if score #clicked_slot eroxenwire.calc matches 2 on vehicle on passengers if entity @s[type=item_display,tag=eroxenwire.redstone_link.right_item] run data modify entity @s item.id set from storage eroxenwire:calc temp

execute if data entity @s data.frequency{valid:0b} unless data entity @s data.frequency{a:"minecraft:air"} unless data entity @s data.frequency{b:"minecraft:air"} run function eroxenwire:redstone_link/internal/frequency/become_valid

playsound minecraft:entity.item_frame.add_item block @a[distance=..16] ~ ~ ~ 1 1