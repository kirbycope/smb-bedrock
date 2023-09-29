execute as @a[scores={timer=0}] run scoreboard players set @s timer 1

execute as @a[scores={timer=1}] run playsound record.chirp
execute as @a[scores={timer=1}] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_2
execute at @a[scores={timer=1..10}] run teleport ~ ~0.1 ~
execute at @a[scores={timer=11..40}] run teleport ~ ~-0.2 ~
execute as @a[scores={timer=40}] run tag @a remove timeout
execute as @a[scores={timer=40}] run tag @a remove init

execute as @a[scores={timer=40}] run scoreboard players set @a timer 0
