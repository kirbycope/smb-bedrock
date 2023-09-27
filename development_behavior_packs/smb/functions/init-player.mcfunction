gamerule sendcommandfeedback false
gamerule dodaylightcycle false
gamerule doweathercycle false
tp @s 3 65 0
clear @s

# "Loading" screen
scoreboard objectives add timer dummy
scoreboard players set @s timer 0
tag @s add intro

# World 1-1
scoreboard objectives add w1l1 dummy
scoreboard players set @s w1l1 0

# SMB Buffs
effect @s invisibility 9999 1 true
effect @s jump_boost 9999 3 true
effect @s haste 9999 1 true

# [w][s][a][d] detection
kill @e[type=armor_stand,name=main]
summon armor_stand main ~ ~ ~
effect @e[type=armor_stand,name=main] invisibility 9999 1 true

# Tag the player so this only runs once
tag @s add init
