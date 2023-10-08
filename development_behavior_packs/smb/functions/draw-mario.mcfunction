# Mario Small - Standing, looking right
execute as @s[scores={facing=0,jumping=0,size=0}] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_00
# Mario Small - Standing, looking left
execute as @s[scores={facing=1,jumping=0,size=0}] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_01
# Mario Small - Crouching, looking right
execute as @s[scores={crouching=1,facing=0,size=0}] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_03
# Mario Small - Crouching, looking left
execute as @s[scores={crouching=1,facing=1,size=0}] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_04
# Mario Small - Jumping, looking right
execute as @s[scores={crouching=0,facing=0,jumping=1,size=0}] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_05
# Mario Small - Jumping, looking left
execute as @s[scores={crouching=0,facing=1,jumping=1,size=0}] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_06

# Mario Big - Standing, looking right
execute as @s[scores={crouching=0,facing=0,jumping=0,size=1}] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_0
# Mario Big - Standing, looking left
execute as @s[scores={crouching=0,facing=1,jumping=0,size=1}] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_1
# Mario Big - Crouching, looking right
execute as @s[scores={crouching=1,facing=0,size=1}] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_3
# Mario Big - Crouching, looking left
execute as @s[scores={crouching=1,facing=1,size=1}] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_4
# Mario Big - Jumping, looking right
execute as @s[scores={crouching=0,facing=0,jumping=1,size=1}] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_5
# Mario Big - Jumping, looking left
execute as @s[scores={crouching=0,facing=1,jumping=1,size=1}] run replaceitem entity @s slot.armor.head 1 kirbycope:smb_hat_6
