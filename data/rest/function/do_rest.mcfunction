# Update proximity for all resting players and cancel leavers
execute as @a[tag=resting] at @s run function rest:check_campfire
execute as @a[tag=resting,scores={rest_found=0}] run function rest:cancel_rest

# Only advance time if someone is still resting
execute if entity @a[tag=resting] run time add 100

# Check current time and target (global)
execute store result score #global rest_time run time query daytime

# Calculate difference from target
scoreboard players operation #check rest_time = #target rest_target
scoreboard players operation #check rest_time -= #global rest_time

# If we've reached the target (within 100 ticks)
execute if entity @a[tag=resting] if score #check rest_time matches -100..100 run function rest:finish_rest

# Otherwise continue (but only while someone is resting)
execute if entity @a[tag=resting] if score #check rest_time matches 101.. run schedule function rest:do_rest 1t
# Handle wrapping around midnight - only finish if we wrapped past the target
execute if entity @a[tag=resting] if score #check rest_time matches ..-101 run schedule function rest:do_rest 1t
