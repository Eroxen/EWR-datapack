summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.marker","eroxified.player_head_blocks.marker.new","eroxenwire.redstone_link"],data:{block_name:"eroxified.eroxenwire.redstone_link",powered:0b,power:0,frequency:{a:"minecraft:air",b:"minecraft:air"}}}

data modify block ~ ~ ~ SkullOwner.Properties set from storage eroxenwire:calc skin_registry.redstone_link.off.Properties

execute as @e[type=marker,tag=eroxified.player_head_blocks.marker.new,tag=eroxenwire.redstone_link,distance=..0.1,limit=1] at @s run function eroxenwire:redstone_link/enter_player_range
execute as @e[type=marker,tag=eroxified.player_head_blocks.marker.new,tag=eroxenwire.redstone_link,distance=..0.1,limit=1] at @s run function eroxenwire:redstone_link/get_type