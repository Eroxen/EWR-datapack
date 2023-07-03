#schedule function eroxenwire:clock_8t 8t replace
scoreboard objectives add eroxenwire.calc dummy

### compatibility ###
data modify storage eroxenwire:calc eroxified_installed set value 0b
data remove storage eroxified:compatibility installed
schedule function eroxenwire:compatibility/install 1t
schedule function eroxenwire:compatibility/scan 2t

data modify storage eroxenwire:calc item_registry set value {redstone_link:{Count:1b,id:"minecraft:player_head",tag:{display:{Name:'{"text":"Redstone Link","italic":false}'},SkullOwner:{Id:[I;786905594,-1666495451,-1314626944,-412814833],Name:"eroxified.eroxenwire.redstone_link",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2JmMTNlZWIwZTdiNThlZTg3OTc4MjVlNDFlZjRmMGRhY2ZkYWMwN2U0ZjBiZTEwNDYxODFiMjFkY2E0NTA2NTUifX19"}]}},eroxified:{player_head_blocks:{detect:1b}}}}}

data modify storage eroxenwire:calc skin_registry set value {redstone_link:{off:{Id:[I;786905594,-1666495451,-1314626944,-412814833],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzExZDEzMjRmODI2MjQyOTE2NzRlYmY1MzA3ZmQ4M2NlZjQzNDFmYjI0YzFkZGNhYmY2YmNkYzQ4NzgzYTE2YWMifX19"}]}},on:{Id:[I;786905594,-1666495451,-1314626944,-412814833],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2JmMTNlZWIwZTdiNThlZTg3OTc4MjVlNDFlZjRmMGRhY2ZkYWMwN2U0ZjBiZTEwNDYxODFiMjFkY2E0NTA2NTUifX19"}]}}}}