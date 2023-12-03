#####################################################################
# datafixer/api/frequency_items.mcfunction
# written by Eroxen
#
# Called when the datafixer version of the item database is outdated.
#####################################################################

scoreboard players set #version eroxenwire.calc 0
scoreboard players operation #version eroxenwire.calc = #eroxenwire.frequency_items eroxified2.datafixer_version
scoreboard players operation #eroxenwire.frequency_items eroxified2.datafixer_version = eroxenwire eroxified2.datafixer_version

execute if score #version eroxenwire.calc matches 1.. run return 0
execute unless data storage eroxenwire:calc frequency_items[0] run return 0

data modify storage eroxenwire:calc internal.datafixer set from storage eroxenwire:calc frequency_items
function eroxenwire:frequency/api/init
execute if data storage eroxenwire:calc internal.datafixer[0] run function eroxenwire:datafixer/internal/frequency_items_loop