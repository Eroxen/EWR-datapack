data modify storage eroxenwire:calc frequency_item set from storage eroxenwire:calc frequency.a
function eroxenwire:frequency/get_item_value
scoreboard players operation frequency eroxenwire.calc = item_value eroxenwire.calc
scoreboard players set op eroxenwire.calc 10000
scoreboard players operation frequency eroxenwire.calc *= op eroxenwire.calc
data modify storage eroxenwire:calc frequency_item set from storage eroxenwire:calc frequency.b
function eroxenwire:frequency/get_item_value
scoreboard players operation frequency eroxenwire.calc += item_value eroxenwire.calc