# Speed up time to specific target
# Target is stored in rest_target scoreboard
# 23000 = morning (5am), 6000 = noon, 15000 = night (9pm)

execute store result score @s rest_time run time query daytime

# Check if already at target time (within 100 ticks)
scoreboard players operation #diff rest_time = #target rest_target
scoreboard players operation #diff rest_time -= @s rest_time

# If already at target (difference is small), notify
execute if score #diff rest_time matches -100..100 run tellraw @s {"text":"Already at that time!","color":"yellow"}

# Otherwise start resting
execute unless score #diff rest_time matches -100..100 run function rest:start_rest
