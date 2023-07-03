execute unless data storage eroxenwire:calc frequency_items run data modify storage eroxenwire:calc frequency_items set value []
data modify storage eroxenwire:calc search set from storage eroxenwire:calc frequency_items
scoreboard players set i eroxenwire.calc 0
scoreboard players set different eroxenwire.calc 1
execute if data storage eroxenwire:calc search[0] run function eroxenwire:frequency/get_item_value_loop
execute if score different eroxenwire.calc matches 1 run data modify storage eroxenwire:calc frequency_items append from storage eroxenwire:calc frequency_item
execute if score different eroxenwire.calc matches 1 run scoreboard players add i eroxenwire.calc 1
scoreboard players operation item_value eroxenwire.calc = i eroxenwire.calc