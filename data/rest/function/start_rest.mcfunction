# Start the rest process
# Message based on target time
execute if score #target rest_target matches 23000 run tellraw @s {"text":"You rest by the campfire until morning (5am)...","color":"green"}
execute if score #target rest_target matches 6000 run tellraw @s {"text":"You rest by the campfire until noon...","color":"green"}
execute if score #target rest_target matches 15000 run tellraw @s {"text":"You rest by the campfire until night (9pm)...","color":"green"}

playsound minecraft:block.portal.travel player @s ~ ~ ~ 0.5 1.5

# Tag the player as resting
tag @s add resting

# Begin the time acceleration
function rest:do_rest
