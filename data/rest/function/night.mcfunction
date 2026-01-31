# Rest until night (9pm = 15000 ticks)

# Perform shared campfire proximity check
function rest:check_campfire

# If campfire found, set target and rest
execute if score @s rest_found matches 1 run scoreboard players set #target rest_target 15000
execute if score @s rest_found matches 1 run function rest:speed_to_morning

# If no campfire nearby
execute if score @s rest_found matches 0 run tellraw @s {"text":"No campfire nearby! You need to be near a campfire to rest.","color":"red"}
