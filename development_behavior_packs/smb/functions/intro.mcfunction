execute as @a[scores={timer=0}] run scoreboard players set @s timer 1

execute as @a[scores={timer=1}] run camera @s set minecraft:first_person
execute as @a[scores={timer=1}] run replaceitem entity @s slot.armor.head 1 minecraft:carved_pumpkin

execute as @a[scores={timer=60}] run camera @s set minecraft:third_person
execute as @a[scores={timer=60}] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_0
execute as @a[scores={timer=60}] run playsound record.11
execute as @a[scores={timer=60}] run tag @a remove intro

execute as @a[scores={timer=60}] run scoreboard players set @a timer 0
