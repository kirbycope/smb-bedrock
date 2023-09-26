# Initialize new players
execute as @a[tag=!init] run function init-player

# [tp] > [w] > [s] > [d] > [a]
#execute @a ~~~ tp @e[name=main,c=1] ~~~ facing ^^^10
execute at @a[tag=init] run tp @e[name=main,c=1] ~ ~ ~ facing ^ ^ ^10
#execute @e[name=main,type=armor_stand] ^^^1 execute @e[r=0.9] say w
execute at @e[type=armor_stand,name=main] positioned ^^^1 as @e[r=0.9] run say w
#execute @e[name=main,type=armor_stand] ^^^-1 execute @e[r=0.9] say s
execute as @e[type=armor_stand,name=main] at @s rotated as @s positioned ^^^-1 run execute as @e[r=0.9] run say "s"
#execute @e[name=main,type=armor_stand] ^-1^^ execute @e[r=0.9] say d
execute as @e[type=armor_stand,name=main] at @s rotated as @s positioned ^-1^^ run execute as @e[r=0.9] run say "d"
#execute @e[name=main,type=armor_stand] ^1^^ execute @e[r=0.9] say a
execute as @e[type=armor_stand,name=main] at @s rotated as @s positioned ^1^^ run execute as @e[r=0.9] run say "a"

# ? Block
execute at @a[tag=!lotto] if block ~ ~1.8 ~ minecraft:brown_glazed_terracotta run function lotto

# -- Level 1 (0=Intro, 1=Playing, 2=Complete) -- #
execute as @a[scores={timer=1..,w1l1=0}] run function intro
# https://www.youtube.com/watch?v=0G2n0baUobE
execute as @a[x=54.5,y=69,z=0,r=1] run execute as @a at @s positioned ~ ~1.5 ~ unless entity @s[dx=0] run function warp11
execute as @a[x=61,y=52,z=0,r=1] run teleport @s 162.0 67 0
execute as @a[x=196,y=66,z=0,r=1,scores={w1l1=1}] run scoreboard players set @s timer 1
execute as @a[scores={timer=1..,w1l1=1}] run function outro

# Increment timer if running
execute as  @a[scores={timer=1..}] run scoreboard players add @a timer 1
