# SMB Buffs
#effect @s invisibility 9999 1 true
#effect @s jump_boost 9999 3 true
#effect @s haste 9999 1 true

# [w][s][a][d] detection
summon armor_stand main ~ ~ ~
#effect @e[type=armor_stand,name=main] invisibility 9999 1

# Tag the player so this only runs once
tag @s add init
