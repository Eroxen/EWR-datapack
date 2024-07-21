#####################################################################
# frequency/api/add_item.mcfunction
# written by Eroxen
#
# Adds an item to the database.
#
# Storage input:
# - eroxenwire:calc api.frequency.item: Item ID (string)
#####################################################################

execute unless data storage eroxenwire:calc frequency_items[0] run function eroxenwire:frequency/api/init

scoreboard players add #frequency_items.new eroxenwire.calc 1
data modify storage eroxenwire:calc temp set value {}
data modify storage eroxenwire:calc temp.id set from storage eroxenwire:calc api.frequency.item
execute store result storage eroxenwire:calc temp.value int 1 run scoreboard players get #frequency_items.new eroxenwire.calc
data modify storage eroxenwire:calc frequency_items append from storage eroxenwire:calc temp