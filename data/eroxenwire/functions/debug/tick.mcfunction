execute at @e[type=marker,tag=eroxenwire.redstone_link,tag=eroxenwire.redstone_link.type.waiting] align xyz positioned ~0.5 ~1 ~0.5 run particle dust 1 0 0 1
execute at @e[type=marker,tag=eroxenwire.redstone_link,tag=eroxenwire.redstone_link.type.receiver] align xyz positioned ~0.5 ~1 ~0.5 run particle dust 0 1 0 1
execute at @e[type=marker,tag=eroxenwire.redstone_link,tag=eroxenwire.redstone_link.type.transmitter.binary] align xyz positioned ~0.5 ~1 ~0.5 run particle dust 0.5 0 1 1
execute at @e[type=marker,tag=eroxenwire.redstone_link,tag=eroxenwire.redstone_link.type.transmitter.digital] align xyz positioned ~0.5 ~1 ~0.5 run particle dust 0 0.5 1 1