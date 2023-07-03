execute if entity @s[tag=eroxenwire.redstone_link.none_type] if predicate eroxenwire:on_source_or_target run tag @s remove eroxenwire.redstone_link.none_type
execute if entity @s[tag=eroxenwire.redstone_link.transmitter] unless predicate eroxenwire:on_source run scoreboard players set send_update eroxenwire.calc 1
execute if entity @s[tag=eroxenwire.redstone_link.transmitter,tag=eroxenwire.redstone_link.valid_frequency] unless predicate eroxenwire:on_source run tag @s remove eroxenwire.redstone_link.transmitter
execute if entity @s[tag=eroxenwire.redstone_link.transmitter.binary] unless predicate eroxenwire:on_binary_source run tag @s remove eroxenwire.redstone_link.transmitter.binary
execute if entity @s[tag=eroxenwire.redstone_link.transmitter.digital] unless predicate eroxenwire:on_digital_source run tag @s remove eroxenwire.redstone_link.transmitter.digital
execute if entity @s[tag=eroxenwire.redstone_link.receiver] unless predicate eroxenwire:on_target run tag @s remove eroxenwire.redstone_link.receiver
execute if entity @s[tag=eroxenwire.redstone_link.receiver,tag=eroxenwire.redstone_link.valid_frequency] unless predicate eroxenwire:on_target run scoreboard players set send_update eroxenwire.calc 1

execute if predicate eroxenwire:on_source run tag @s add eroxenwire.redstone_link.transmitter
execute if predicate eroxenwire:on_binary_source run tag @s add eroxenwire.redstone_link.transmitter.binary
execute if predicate eroxenwire:on_digital_source run tag @s add eroxenwire.redstone_link.transmitter.digital
execute if predicate eroxenwire:on_target run tag @s add eroxenwire.redstone_link.receiver
execute unless predicate eroxenwire:on_source_or_target run tag @s add eroxenwire.redstone_link.none_type

execute if entity @s[tag=eroxenwire.redstone_link.none_type] run data modify entity @s data merge value {powered:0b,power:0}
execute if entity @s[tag=eroxenwire.redstone_link.none_type] if predicate eroxified:player_head_blocks/player_head run data modify block ~ ~ ~ SkullOwner.Properties set from storage eroxenwire:calc skin_registry.redstone_link.off.Properties
execute if score send_update eroxenwire.calc matches 1 run scoreboard players operation frequency eroxenwire.calc = @s eroxenwire.calc
execute if score send_update eroxenwire.calc matches 1 run function eroxenwire:frequency/send_update