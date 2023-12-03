#####################################################################
# redstone_link/api/placed.mcfunction
# written by Eroxen
#
# Called on a newly placed redstone link player head.
#####################################################################

data modify storage eroxenwire:calc macro set from storage eroxified2:api phead.positioning

execute unless data storage eroxified2:api phead.place.item.tag.eroxenwire.frequency run function eroxenwire:redstone_link/internal/spawn with storage eroxenwire:calc macro
execute if data storage eroxified2:api phead.place.item.tag.eroxenwire.frequency run data modify storage eroxenwire:calc macro merge from storage eroxified2:api phead.place.item.tag.eroxenwire.frequency
execute if data storage eroxified2:api phead.place.item.tag.eroxenwire.frequency run function eroxenwire:redstone_link/internal/spawn_with_frequency with storage eroxenwire:calc macro