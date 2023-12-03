#####################################################################
# redstone_link/api/placed.mcfunction
# written by Eroxen
#
# Called on a newly placed redstone link player head.
#####################################################################

$execute positioned ~ ~-0.1875 ~ positioned ^ ^ ^0.02 run summon interaction ~ ~ ~ {width:0.49,height:0.375,response:1b,Tags:["eroxified2.interaction","eroxenwire.redstone_link"],Rotation:$(rotation),Passengers:[\
{id:"minecraft:marker",Tags:["eroxified2.phead.block.marker","eroxenwire.redstone_link","eroxenwire.redstone_link.type.invalid"],data:{powered:0b,power:0,frequency:{a:"minecraft:air",b:"minecraft:air",valid:0b}}},\
{id:"minecraft:item_display",Tags:["eroxenwire.redstone_link","eroxenwire.redstone_link.left_item"],item_display:"fixed",item:{Count:1b,id:"minecraft:air"},view_range:0.3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.1875f,0.2378f],scale:[0.25f,0.25f,0.25f]},Rotation:$(rotation)},\
{id:"minecraft:item_display",Tags:["eroxenwire.redstone_link","eroxenwire.redstone_link.right_item"],item_display:"fixed",item:{Count:1b,id:"minecraft:air"},view_range:0.3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.1875f,0.2378f],scale:[0.25f,0.25f,0.25f]},Rotation:$(rotation)}\
]}

execute positioned ~ ~-0.1875 ~ as @e[type=marker,tag=eroxified2.phead.block.marker,tag=eroxenwire.redstone_link,distance=..0.1] run function eroxenwire:redstone_link/internal/init_marker