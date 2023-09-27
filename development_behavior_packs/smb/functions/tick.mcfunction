# Initialize new players
execute as @a[tag=!init] run function init-player

# WASD detection
#execute at @e[type=armor_stand,name=main] positioned ^^^1 as @e[r=0.9] run say "w"
#execute at @e[type=armor_stand,name=main] positioned ^1^^ as @e[r=0.9] run say "a"
execute at @e[type=armor_stand,name=main] positioned ^1^^ as @e[r=0.9] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_1
#execute at @e[type=armor_stand,name=main] positioned ^^^1 as @e[r=0.9] run say "s"
execute at @e[type=armor_stand,name=main] positioned ^-1^^ as @e[r=0.9] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_0
execute at @a[tag=init] run tp @e[name=main,c=1] ~ ~ ~ facing ^ ^ ^10

# ? Block
execute at @a[tag=!lotto] if block ~ ~1.8 ~ minecraft:brown_glazed_terracotta run function lotto
# (Hidden) ? Block
execute at @a[tag=!lotto] if block ~ ~1.8 ~ minecraft:glow_lichen run function lotto

# Level 1 - Intro ("Loading Screen")
execute as @a[tag=intro] run function intro
# Level 1 - Warp Pipe In
execute as @a[tag=!warpin,x=54.5,y=69,z=0,r=1] run execute as @a at @s positioned ~ ~1.5 ~ unless entity @s[dx=0] run tag @s add warp11in
execute as @a[tag=warp11in] run function warp11in
# Level 1 - Warp Pipe Out
execute as @a[tag=!warpout,x=62,y=52,z=0,r=0.8] run tag @s add warp11out
execute as @a[tag=warp11out] run function warp11out
# Level 1 - Outro (Flag Pole)
execute as @a[tag=!outro,x=196,y=66,z=0,r=1] run tag @s add outro
execute as @a[tag=outro] run function outro

# Increment timer if running
execute as  @a[scores={timer=1..}] run scoreboard players add @a timer 1
