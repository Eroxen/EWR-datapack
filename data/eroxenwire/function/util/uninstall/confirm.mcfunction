execute as @e[type=marker,tag=eroxenwire.redstone_link] at @s if predicate eroxified2:phead/head run setblock ~ ~ ~ air
kill @e[tag=eroxenwire.entity]

clear @a *[minecraft:custom_data~{eroxenwire:{}}]
clear @a *[minecraft:custom_data~{eroxified2:{phead:{id:"eroxenwire:redstone_link"}}}]
execute as @e[type=item] if items entity @s contents *[minecraft:custom_data~{eroxenwire:{}}] run kill @s
execute as @e[type=item] if items entity @s contents *[minecraft:custom_data~{eroxified2:{phead:{id:"eroxenwire:redstone_link"}}}] run kill @s

data remove storage eroxenwire:calc old_frequency_items
data remove storage eroxenwire:calc frequency_items
data remove storage eroxenwire:calc macro
data remove storage eroxenwire:calc temp
data remove storage eroxenwire:calc internal
data remove storage eroxenwire:calc api
data remove storage eroxenwire:calc auto_spawn_redstone_link
data remove storage eroxenwire:calc skin_registry
data remove storage eroxenwire:calc frequency

scoreboard objectives remove eroxenwire.calc
scoreboard objectives remove eroxenwire.frequency
scoreboard objectives remove eroxenwire.power

function eroxenwire:signature
function eroxified2:core/api/disable_signature

tellraw @a {"text":"[Eroxen's Wireless Redstone] Uninstalled datapack. If you renamed the datapack file, make sure to disable it manually using /datapack disable.","color":"gold"}