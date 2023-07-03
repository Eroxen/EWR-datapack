execute store success score different eroxenwire.calc run data modify storage eroxenwire:calc search[0] set from storage eroxenwire:calc frequency_item
scoreboard players add i eroxenwire.calc 1
data remove storage eroxenwire:calc search[0]
execute if score different eroxenwire.calc matches 1 if data storage eroxenwire:calc search[0] run function eroxenwire:frequency/get_item_value_loop