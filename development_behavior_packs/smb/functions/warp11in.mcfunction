execute as @s[scores={timer=0}] run scoreboard players set @s timer 1

execute as @s[scores={timer=1}] run playsound random.orb
execute at @s[scores={timer=1..10}] run teleport ~ ~-0.1 ~
execute at @s[scores={timer=11}] run teleport @s 51 58 0

execute as @s[scores={timer=12}] run playsound record.blocks
execute as @s[scores={timer=12}] run tag @s remove warp11in

execute as @s[scores={timer=12}] run scoreboard players set @s timer 0
