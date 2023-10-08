execute as @a[scores={timer=0}] run scoreboard players set @s timer 1

execute as @a[scores={timer=1}] run playsound record.chirp
execute as @a[scores={timer=1},tag=mario] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_2
execute as @a[scores={timer=1},tag=luigi] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_l2
execute at @a[scores={timer=1..10}] run teleport ~ ~0.1 ~
execute at @a[scores={timer=11..40}] run teleport ~ ~-0.2 ~
execute as @a[scores={timer=40}] run tag @s remove timeout
execute as @a[scores={timer=40}] run tag @s add intro

execute as @a[scores={timer=40}] run scoreboard players set @s timer 0
