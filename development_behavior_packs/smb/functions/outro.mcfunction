execute as @a[scores={timer=0}] run scoreboard players set @s timer 1

execute as @a[scores={timer=1}] run playsound record.13

execute at @a[scores={timer=1..10}] run teleport ~0.1 ~-0.1 ~
execute at @a[scores={timer=11..56}] run teleport ~0.1 65 ~

execute as @a[scores={timer=100}] run summon minecraft:fireworks_rocket 201 65 0
execute as @a[scores={timer=100}] run summon minecraft:fireworks_rocket 203 65 0
execute as @a[scores={timer=100}] run scoreboard players set @a w1l1 2
execute as @a[scores={timer=100}] run scoreboard players set @a timer 0
