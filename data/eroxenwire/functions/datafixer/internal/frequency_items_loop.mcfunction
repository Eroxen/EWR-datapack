data modify storage eroxenwire:calc api.frequency.item set from storage eroxenwire:calc internal.datafixer[0]
data remove storage eroxenwire:calc internal.datafixer[0]
function eroxenwire:frequency/api/add_item
execute if data storage eroxenwire:calc internal.datafixer[0] run function eroxenwire:datafixer/internal/frequency_items_loop

say l