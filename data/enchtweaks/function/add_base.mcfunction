#data modify storage enchtweaks:has_guarding Inventory set from entity @s Inventory
#data remove storage enchtweaks:has_guarding Inventory[{components:{"minecraft:custom_data":{has_guarding:true}}}]
#execute if data storage enchtweaks:has_guarding Inventory[{components:{"minecraft:enchantments":{levels:{"enchtweaks:has_guarding":1}}}}] run data modify storage enchtweaks:has_guarding Slot set from storage enchtweaks:has_guarding Inventory[{components:{"minecraft:enchantments":{levels:{"enchtweaks:has_guarding":1}}}}].Slot
#execute if data storage enchtweaks:has_guarding Inventory[{components:{"minecraft:enchantments":{levels:{"enchtweaks:has_guarding":1}}}}] run function enchtweaks:add_macro with storage enchtweaks:has_guarding

data modify storage enchtweaks:slots Inventory[{"components":{"minecraft:enchantments":{"enchtweaks:guarding":1}}}]


data modify storage enchtweaks:has_guarding Inventory set value {"minecraft:blocks_attacks":{"block_delay_seconds": 0.25,"damage_reductions":[{"base": 0,"factor": 0.15,"horizontal_blocking_angle": 70,"type": ["arrow","cactus","ender_pearl","explosion","falling_stalactite","fireball","fireworks","magic","mace_smash","mob_attack","mob_attack_no_aggro","player_attack","player_explosion","trident","wither_skull"]}]}}
tellraw @a test