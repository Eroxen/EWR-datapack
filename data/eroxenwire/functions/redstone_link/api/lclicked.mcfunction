#####################################################################
# redstone_link/api/lclicked.mcfunction
# written by Eroxen
#
# Called when a redstone link is left-clicked.
#####################################################################

execute on attacker run function eroxified2:phead/api/raycast
function eroxenwire:redstone_link/internal/get_clicked_slot
execute if score #clicked_slot eroxenwire.calc matches 0 run return 0

execute if score #clicked_slot eroxenwire.calc matches 1 on passengers if entity @s[type=marker,nbt={data:{frequency:{a:"minecraft:air"}}}] run return 0
execute if score #clicked_slot eroxenwire.calc matches 2 on passengers if entity @s[type=marker,nbt={data:{frequency:{b:"minecraft:air"}}}] run return 0

execute on passengers if entity @s[type=marker] run function eroxenwire:redstone_link/internal/remove_item