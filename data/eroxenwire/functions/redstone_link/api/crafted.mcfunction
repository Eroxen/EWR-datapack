#####################################################################
# redstone_link/api/crafted.mcfunction
# written by Eroxen
#
# Called when a redstone link was crafted. Clears the knowledge book
# and gives the correct item.
#####################################################################

advancement revoke @s only eroxenwire:craft_redstone_link
clear @s knowledge_book
loot give @s loot eroxenwire:redstone_link