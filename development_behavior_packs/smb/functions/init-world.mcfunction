gamerule dodaylightcycle false
gamerule doweathercycle false
gamerule falldamage false
gamerule sendcommandfeedback false

# Crouching - Tracks if the player is crouching (0=false, 1=true)
 scoreboard objectives add crouching dummy
 # Countdown - The time left in in-game ticks ticks (20 per second)
 scoreboard objectives add countdown dummy
 # Facing - Tracks the direction the player is facing (0=right,1=left)
 scoreboard objectives add facing dummy
 # Jumping - Tracks if the player is jumping (0=false, 1=true)
 scoreboard objectives add jumping dummy
 # Size - Tracks if the player is small or big (0=small, 1=big)
 scoreboard objectives add size dummy
 # TIME - The time left in real time seconds
 scoreboard objectives add TIME dummy
 scoreboard objectives setdisplay sidebar TIME
 # Timer - An animation and event timer
 scoreboard objectives add timer dummy
 # World 1-1
 scoreboard objectives add w1l1 dummy
