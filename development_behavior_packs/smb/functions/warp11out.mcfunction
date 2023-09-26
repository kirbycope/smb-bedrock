execute as @a[scores={timer=0}] run scoreboard players set @s timer 1

execute as @a[scores={timer=1}] run playsound random.orb
execute at @a[scores={timer=1..10}] run teleport ~0.1 ~ ~
execute at @a[scores={timer=11}] run teleport @s 162.0 67 0

execute as @a[scores={timer=100}] run tag @a remove warpout

execute as @a[scores={timer=100}] run scoreboard players set @a timer 0
