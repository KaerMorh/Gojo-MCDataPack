#需要每tick执行的检测系统
#execute as @a[scores={rightclick=1..}] at @s run function ray:rightclick 已添加在tick
#以及一个rightclick计分板
#scoreboard objectives add rightclick minecraft.used:carrot_on_a_stick

#如果拿着tag为ci的物品，则在眼睛位置执行launch
execute if entity @s[nbt={SelectedItem:{tag:{ray:ci}}}] positioned ~ ~1.6 ~ run function ray:launch
scoreboard players reset @s rightclick 