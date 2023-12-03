#####################################################################
# frequency/api/calculate.mcfunction
# written by Eroxen
#
# Called by a redstone link marker.
# Calculates the summed frequency.
# Returns -1 if the frequency is invalid.
#
# Scoreboard output:
# - #frequency.frequency eroxenwire.calc: frequency
#####################################################################

data modify storage eroxenwire:calc api.frequency.frequency set from entity @s data.frequency

data modify storage eroxenwire:calc api.frequency.item set from storage eroxenwire:calc api.frequency.frequency.a
execute if data storage eroxenwire:calc api.frequency{item:"minecraft:air"} run scoreboard players set #frequency.frequency eroxenwire.calc -1
execute if data storage eroxenwire:calc api.frequency{item:"minecraft:air"} run return 0
function eroxenwire:frequency/api/get_value

scoreboard players set #frequency.frequency eroxenwire.calc 10000
scoreboard players operation #frequency.frequency eroxenwire.calc *= #frequency.value eroxenwire.calc

data modify storage eroxenwire:calc api.frequency.item set from storage eroxenwire:calc api.frequency.frequency.b
execute if data storage eroxenwire:calc api.frequency{item:"minecraft:air"} run scoreboard players set #frequency.frequency eroxenwire.calc -1
execute if data storage eroxenwire:calc api.frequency{item:"minecraft:air"} run return 0
function eroxenwire:frequency/api/get_value
scoreboard players operation #frequency.frequency eroxenwire.calc += #frequency.value eroxenwire.calc