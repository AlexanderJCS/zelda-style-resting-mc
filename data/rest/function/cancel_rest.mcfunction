# Cancel resting for this player (left campfire proximity)
tellraw @s {"text":"You moved away from the campfire. Rest canceled.","color":"red"}
playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 0.6 1.2

# Remove resting tag from this player
tag @s remove resting
