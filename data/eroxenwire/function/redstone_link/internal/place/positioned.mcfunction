data modify storage eroxenwire:calc macro set from storage eroxified2:api phead.positioning

execute unless data storage eroxified2:api phead.place.block_components.minecraft:custom_data.eroxenwire.frequency run return run function eroxenwire:redstone_link/internal/place/spawn with storage eroxenwire:calc macro

data modify storage eroxenwire:calc macro merge from storage eroxified2:api phead.place.block_components.minecraft:custom_data.eroxenwire.frequency
function eroxenwire:redstone_link/internal/place/spawn_with_frequency with storage eroxenwire:calc macro