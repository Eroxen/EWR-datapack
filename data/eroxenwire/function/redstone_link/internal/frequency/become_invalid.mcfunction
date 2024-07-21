data modify entity @s data.frequency.valid set value 0b
scoreboard players reset @s eroxenwire.frequency

function eroxenwire:redstone_link/internal/exit_type

tag @s add eroxenwire.redstone_link.type.invalid
function eroxenwire:redstone_link/internal/apply_skin/off