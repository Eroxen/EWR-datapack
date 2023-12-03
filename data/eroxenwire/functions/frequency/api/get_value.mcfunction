#####################################################################
# frequency/api/get_value.mcfunction
# written by Eroxen
#
# Gets the numerical value associated with an item id.
#
# Storage input:
# - eroxenwire:calc api.frequency.item: Item ID (string)
#
# Scoreboard output:
# - #frequency.value eroxenwire.calc: value
#####################################################################

function eroxenwire:frequency/internal/get_value with storage eroxenwire:calc api.frequency