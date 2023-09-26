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

# -- Level 1 (0=Intro, 1=Playing, 2=Complete) -- #
execute as @a[scores={timer=1..,w1l1=0}] run function intro
execute as @a[x=196,y=66,z=0,r=1,scores={w1l1=1}] run scoreboard players set @s timer 1
execute as @a[scores={timer=1..,w1l1=1}] run function outro

# Increment timer if running
execute as  @a[scores={timer=1..}] run scoreboard players add @a timer 1
