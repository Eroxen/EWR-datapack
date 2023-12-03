execute if predicate eroxenwire:on_binary_source run function eroxenwire:redstone_link/internal/binary_transmitter/init
execute if predicate eroxenwire:on_digital_source run function eroxenwire:redstone_link/internal/digital_transmitter/init
execute if predicate eroxenwire:on_target run function eroxenwire:redstone_link/internal/receiver/init
execute unless predicate eroxenwire:on_source_or_target run function eroxenwire:redstone_link/internal/waiting/init