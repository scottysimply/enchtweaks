#data modify storage enchtweaks:has_guarding Inventory set from entity @s Inventory
#data remove storage enchtweaks:has_guarding Inventory[{components:{"minecraft:custom_data":{has_guarding:true}}}]
#execute if data storage enchtweaks:has_guarding Inventory[{components:{"minecraft:enchantments":{levels:{"enchtweaks:has_guarding":1}}}}] run data modify storage enchtweaks:has_guarding Slot set from storage enchtweaks:has_guarding Inventory[{components:{"minecraft:enchantments":{levels:{"enchtweaks:has_guarding":1}}}}].Slot
#execute if data storage enchtweaks:has_guarding Inventory[{components:{"minecraft:enchantments":{levels:{"enchtweaks:has_guarding":1}}}}] run function enchtweaks:add_macro with storage enchtweaks:has_guarding

# pseudocode:
# for item in inventory:
#     if item is enchanted and hasn't received component yet:
#         apply_guarding
#         
#
#
#

tellraw @a "test"
data modify storage enchtweaks:current_enchantmnet Level set from entity @s Inventory[{components:{"minecraft:enchantments":{"enchtweaks:guarding":..2}}}].Slot
execute run function enchtweaks:add_macro with storage enchtweaks:ench_slot Slot