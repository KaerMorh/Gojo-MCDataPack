#需要前置的在每tick运行的检测指令
#比如 
#循环执行 
#添加explore标签        execute as @e[tag=ray,nbt={PortalCooldown:0}] at @s run tag @s add explore 已添加在tick tick为10 可以提前引爆
#对所有explore标签执行  execute as @e[tag=explore] at @s run function ray:explore 已添加在tick

particle explosion ~ ~ ~ 0 0 0 0 0 force
kill @s