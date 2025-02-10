advancement revoke @s only enchtweaks:has_guarding

execute if items entity @s container.* \
    *[enchantments~[{enchantments:"enchtweaks:guarding"}],!custom_data~{"applied_ench":true}] \
    run function enchtweaks:add_base

#execute if items entity @s container.* \
    *[!enchantments~[{enchantments:"enchtweaks:guarding"}],custom_data~{"has_guarding":true}] \
    run function enchtweaks:del_base