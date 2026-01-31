# Finish the rest - target time reached
execute if score #target rest_target matches 23000 run tellraw @a[tag=resting] {"text":"Morning has arrived!","color":"gold"}
execute if score #target rest_target matches 6000 run tellraw @a[tag=resting] {"text":"Noon has arrived!","color":"gold"}
execute if score #target rest_target matches 15000 run tellraw @a[tag=resting] {"text":"Night has arrived!","color":"gold"}

playsound minecraft:entity.player.levelup player @a[tag=resting] ~ ~ ~ 0.5 1.2

# Remove resting tag
tag @a remove resting
