#需要每tick执行的检测系统
#execute as @a[scores={rightclick=1..}] at @s run function ray:rightclick 已添加在tick
#以及一个rightclick计分板
#scoreboard objectives add rightclick minecraft.used:carrot_on_a_stick

#如果拿有nbt test:ray的物品，则在眼睛位置执行launch
execute if entity @s[nbt={SelectedItem:{tag:{test:ray}}}] positioned ~ ~1.6 ~ run function test:ray/launch
execute if entity @s[nbt={SelectedItem:{tag:{test:tp}}}] positioned ~ ~1.6 ~ run function test:tp_tag/use_port
execute if entity @s[nbt={SelectedItem:{tag:{test:frozen}}}] positioned ~ ~1.6 ~ run function test:ray/frozen_use
execute if entity @s[nbt={SelectedItem:{tag:{test:arrow}}}] run function test:parabola/shootarrow

scoreboard players reset @s test_rightclick