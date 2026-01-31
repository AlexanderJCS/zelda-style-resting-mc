# Finish the rest - target time reached
# Store current time to verify we actually reached the target
execute store result score #current rest_time run time query daytime

# Only show completion message if we're actually near the target time
execute if score #target rest_target matches 23000 if score #current rest_time matches 22900..23100 run tellraw @a[tag=resting] {"text":"Morning has arrived!","color":"gold"}
execute if score #target rest_target matches 23000 if score #current rest_time matches 22900..23100 run playsound minecraft:entity.player.levelup player @a[tag=resting] ~ ~ ~ 0.5 1.2

execute if score #target rest_target matches 6000 if score #current rest_time matches 5900..6100 run tellraw @a[tag=resting] {"text":"Noon has arrived!","color":"gold"}
execute if score #target rest_target matches 6000 if score #current rest_time matches 5900..6100 run playsound minecraft:entity.player.levelup player @a[tag=resting] ~ ~ ~ 0.5 1.2

execute if score #target rest_target matches 15000 if score #current rest_time matches 14900..15100 run tellraw @a[tag=resting] {"text":"Night has arrived!","color":"gold"}
execute if score #target rest_target matches 15000 if score #current rest_time matches 14900..15100 run playsound minecraft:entity.player.levelup player @a[tag=resting] ~ ~ ~ 0.5 1.2

# Remove resting tag
tag @a remove resting
