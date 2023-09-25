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

# Start the intro if the timer is running
execute as @a[tag=init,scores={timer=1..}] run function intro

# Increment timer if running
execute as  @a[tag=init,scores={timer=1..}] run scoreboard players add @a timer 1
