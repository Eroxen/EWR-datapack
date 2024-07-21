#####################################################################
# redstone_link/api/rclicked.mcfunction
# written by Eroxen
#
# Called when a redstone link is right-clicked.
#####################################################################

execute on target unless data entity @s SelectedItem run return 0
execute on target run function eroxified2:phead/api/raycast
function eroxenwire:redstone_link/internal/get_clicked_slot
execute if score #clicked_slot eroxenwire.calc matches 0 run return 0

execute if score #clicked_slot eroxenwire.calc matches 1 on passengers if entity @s[type=marker] run data modify storage eroxenwire:calc temp set from entity @s data.frequency.a
execute if score #clicked_slot eroxenwire.calc matches 2 on passengers if entity @s[type=marker] run data modify storage eroxenwire:calc temp set from entity @s data.frequency.b
execute store success score #different eroxenwire.calc on target run data modify storage eroxenwire:calc temp set from entity @s SelectedItem.id
execute if score #different eroxenwire.calc matches 0 run return 0

execute on passengers if entity @s[type=marker] run function eroxenwire:redstone_link/internal/set_item