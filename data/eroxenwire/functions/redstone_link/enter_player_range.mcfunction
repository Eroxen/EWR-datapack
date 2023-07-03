function eroxified:api/player_head_blocks/get_rotation

summon item_display ~ ~ ~ {Tags:["eroxenwire.redstone_link.item_display","eroxenwire.redstone_link.item_display.new","eroxenwire.redstone_link.item_display.a"],item_display:"fixed",item:{Count:1b,id:"minecraft:air"},view_range:0.3}
data modify entity @e[type=item_display,tag=eroxenwire.redstone_link.item_display.new,distance=..0.1,limit=1] Rotation set from storage eroxified:api rotation
data modify entity @e[type=item_display,tag=eroxenwire.redstone_link.item_display.new,distance=..0.1,limit=1] transformation.scale set value [0.25f,0.25f,0.25f]
execute if block ~ ~ ~ minecraft:player_head run data modify entity @e[type=item_display,tag=eroxenwire.redstone_link.item_display.new,distance=..0.1,limit=1] transformation.translation set value [-0.125f,-0.25f,0.2578f]
execute if block ~ ~ ~ minecraft:player_wall_head run data modify entity @e[type=item_display,tag=eroxenwire.redstone_link.item_display.new,distance=..0.1,limit=1] transformation.translation set value [-0.125f,0f,0.0078f]
tag @e[type=item_display,tag=eroxenwire.redstone_link.item_display.new,distance=..0.1] remove eroxenwire.redstone_link.item_display.new

summon item_display ~ ~ ~ {Tags:["eroxenwire.redstone_link.item_display","eroxenwire.redstone_link.item_display.new","eroxenwire.redstone_link.item_display.b"],item_display:"fixed",item:{Count:1b,id:"minecraft:air"},view_range:0.3}
data modify entity @e[type=item_display,tag=eroxenwire.redstone_link.item_display.new,distance=..0.1,limit=1] Rotation set from storage eroxified:api rotation
data modify entity @e[type=item_display,tag=eroxenwire.redstone_link.item_display.new,distance=..0.1,limit=1] transformation.scale set value [0.25f,0.25f,0.25f]
execute if block ~ ~ ~ minecraft:player_head run data modify entity @e[type=item_display,tag=eroxenwire.redstone_link.item_display.new,distance=..0.1,limit=1] transformation.translation set value [0.125f,-0.25f,0.2578f]
execute if block ~ ~ ~ minecraft:player_wall_head run data modify entity @e[type=item_display,tag=eroxenwire.redstone_link.item_display.new,distance=..0.1,limit=1] transformation.translation set value [0.125f,0f,0.0078f]
tag @e[type=item_display,tag=eroxenwire.redstone_link.item_display.new,distance=..0.1] remove eroxenwire.redstone_link.item_display.new

function eroxified:api/player_head_blocks/spawn_rotated_origin

execute unless predicate eroxenwire:head_straight as @e[type=marker,tag=eroxified.player_head_blocks.origin,distance=..1,limit=1] at @s rotated as @s positioned ^-0.125 ^ ^0.25 run summon interaction ~ ~0.125 ~ {Tags:["eroxenwire.redstone_link.interaction","eroxenwire.redstone_link.interaction.a"],width:0.25,height:0.25,response:1b}
execute unless predicate eroxenwire:head_straight as @e[type=marker,tag=eroxified.player_head_blocks.origin,distance=..1,limit=1] at @s rotated as @s positioned ^0.125 ^ ^0.25 run summon interaction ~ ~0.125 ~ {Tags:["eroxenwire.redstone_link.interaction","eroxenwire.redstone_link.interaction.b"],width:0.25,height:0.25,response:1b}
execute if predicate eroxenwire:head_straight as @e[type=marker,tag=eroxified.player_head_blocks.origin,distance=..1,limit=1] at @s rotated as @s positioned ^-0.125 ^ ^0.15 run summon interaction ~ ~0.125 ~ {Tags:["eroxenwire.redstone_link.interaction","eroxenwire.redstone_link.interaction.a"],width:0.25,height:0.25,response:1b}
execute if predicate eroxenwire:head_straight as @e[type=marker,tag=eroxified.player_head_blocks.origin,distance=..1,limit=1] at @s rotated as @s positioned ^0.125 ^ ^0.15 run summon interaction ~ ~0.125 ~ {Tags:["eroxenwire.redstone_link.interaction","eroxenwire.redstone_link.interaction.b"],width:0.25,height:0.25,response:1b}

tag @s add eroxenwire.redstone_link.in_player_range
function eroxenwire:redstone_link/update_item_displays