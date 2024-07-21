#####################################################################
# redstone_link/api/despawn.mcfunction
# written by Eroxen
#
# Removes the redstone link. Called on the marker.
#####################################################################

scoreboard players operation #old eroxenwire.frequency = @s eroxenwire.frequency
execute on vehicle run function eroxified2:entity/api/kill_stack
function eroxenwire:frequency/api/send_update_on_old