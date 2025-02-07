advancement revoke @s only enchtweaks:has_guarding

execute if items entity @s container.* \
    *[enchantments~[{enchantments:"enchtweaks:guarding"}],!custom_data~{"ench_id":true}] \
    run function enchtweaks:add_base

execute if items entity @s container.* \
    *[enchantments~[{enchantments:"enchtweaks:guarding"}],!custom_data~{"ench_id":true}] \
    run function enchtweaks:del_base