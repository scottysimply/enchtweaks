# function will take the following params: \
 internal_name string: the function that will be ran \
 iterable collection: the thing that will be looped over \
 index int: the current index being looped over

# run func (shouldn't need end)
$function $(internal_name) with storage enchtweaks:func_storage {}
say "ran"
#stop at max value
$execute unless score #$(internal_name) func_indices < $(end) func_indices run return $(index)
say "didnt return"
# increment scoreboard
$scoreboard players operation #$(internal_name) func_indices += #one func_indices
# set data index from scoreboard index
$execute store result storage enchtweaks:func_storage Func[{internal_name:"$(internal_name)"}].index int 1 run scoreboard players get #$(internal_name) func_indices
# recurse
say "recursing"
$function enchtweaks:foreach_inner with storage enchtweaks:func_storage Func[{internal_name:"$(internal_name)"}]