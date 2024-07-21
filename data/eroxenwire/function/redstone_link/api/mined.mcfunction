#####################################################################
# redstone_link/api/mined.mcfunction
# written by Eroxen
#
# Called on a redstone link marker when the head is destroyed and
# an item drops.
#####################################################################

data modify storage eroxified2:api phead.mined.replace_from_loot_table set value "eroxenwire:redstone_link"
execute if data entity @s {data:{frequency:{valid:1b}}} run function eroxenwire:redstone_link/internal/frequency/to_item with entity @s data.frequency