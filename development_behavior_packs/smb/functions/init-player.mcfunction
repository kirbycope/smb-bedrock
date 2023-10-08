# Determine player
scoreboard objectives add player dummy
scoreboard players add initialized player 0
execute if score initialized player matches 0 run tag @s add mario
execute if score initialized player matches 1 run tag @s add luigi
scoreboard players set initialized player 1

# Player scoreboards
scoreboard players set @s crouching 0
scoreboard players set @s countdown 8000
scoreboard players set @s facing 0
scoreboard players set @s jumping 0
scoreboard players set @s size 0
scoreboard players set @s TIME 0
scoreboard players set @s timer 0
scoreboard players set @s w1l1 0

# Initial position - World 1 Level 1
teleport @s 3 65 0 facing 3 65 -1

# SMB Buffs
effect @s invisibility 9999 1 true
effect @s jump_boost 9999 3 true
effect @s haste 9999 1 true

# [w][s][a][d] detection
kill @e[type=armor_stand,name=main]
summon armor_stand main ~ ~ ~
effect @e[type=armor_stand,name=main] invisibility 9999 1 true

# Run the Intro for the new player
tag @s add intro

# Tag the player so this only runs once
tag @s add init
