execute as @s[scores={timer=0}] run scoreboard players set @s timer 1

execute as @s[scores={timer=1}] run playsound random.orb
execute at @s[scores={timer=1..10}] run teleport ~0.1 ~ ~
execute at @s[scores={timer=11}] run teleport @s 162.0 67 0

execute as @s[scores={timer=12}] run tag @s remove warp11out

execute as @s[scores={timer=12}] run scoreboard players set @s timer 0
