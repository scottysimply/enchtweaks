# calling a foreach loop will require the following parameters:\
  internal_name string: the internal name of the function. values will get overwritten if the same loop is called twice \
  collection collection: the thing to loop over. must be a list [] \
  index int: the starting index/current index \
  end int: the ending index \

# begin by initializing the loop and scoreboard values
$execute unless data storage enchtweaks:func_storage Func[{internal_name:"$(internal_name)"}] \
    run data modify storage enchtweaks:func_storage Func append value {internal_name:"$(internal_name)",collection:$(collection),index:$(index),end:$(end)}
scoreboard objectives add func_indices dummy "index"
$scoreboard players set #$(internal_name) func_indices $(index)
scoreboard players set #one func_indices 1
$function enchtweaks:foreach_inner with storage enchtweaks:func_storage Func[{internal_name:"$(internal_name)"}]
say "finished loop"