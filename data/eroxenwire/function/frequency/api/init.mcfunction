#####################################################################
# frequency/api/init.mcfunction
# written by Eroxen
#
# Initialises the frequency item database.
#####################################################################

scoreboard players operation #eroxenwire.frequency_items eroxified2.datafixer_version = eroxenwire eroxified2.datafixer_version
scoreboard players set #frequency_items.new eroxenwire.calc 0
data modify storage eroxenwire:calc frequency_items set value []