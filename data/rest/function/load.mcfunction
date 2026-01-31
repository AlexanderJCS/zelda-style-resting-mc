# Initialize scoreboards
scoreboard objectives add rest_time dummy
scoreboard objectives add rest_found dummy
scoreboard objectives add rest_target dummy

# Confirmation message
tellraw @a {"text":"Rest datapack loaded! Use /function rest:morning, /function rest:noon, or /function rest:night near a campfire.","color":"aqua"}
