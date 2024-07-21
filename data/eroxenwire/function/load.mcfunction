scoreboard objectives add eroxenwire.calc dummy
scoreboard objectives add eroxenwire.power dummy
scoreboard objectives add eroxenwire.frequency dummy

# scoreboard players set eroxenwire eroxified2.datafixer_version 1
# execute unless score #eroxenwire.frequency_items eroxified2.datafixer_version = eroxenwire eroxified2.datafixer_version run function eroxenwire:datafixer/api/frequency_items

data modify storage eroxenwire:calc skin_registry set value {redstone_link:{off:{id:[I;786905594,-1666495451,-1314626944,-412814833],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzExZDEzMjRmODI2MjQyOTE2NzRlYmY1MzA3ZmQ4M2NlZjQzNDFmYjI0YzFkZGNhYmY2YmNkYzQ4NzgzYTE2YWMifX19"}]},on:{id:[I;786905594,-1666495451,-1314626944,-412814833],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2JmMTNlZWIwZTdiNThlZTg3OTc4MjVlNDFlZjRmMGRhY2ZkYWMwN2U0ZjBiZTEwNDYxODFiMjFkY2E0NTA2NTUifX19"}]}}}