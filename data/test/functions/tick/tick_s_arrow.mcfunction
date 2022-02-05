execute if entity @s[nbt={PortalCooldown:0}] run function test:parabola/arr_kill
#execute if entity @s[tag=!aimdone,nbt={PortalCooldown:110}] run tag @s add ending
execute if entity @s[tag=!aimdone,scores={test_ticking=5..}] run tag @s add ending
#需要选择实体
execute if entity @s[tag=s_arrow,tag=!aimdone,tag=ending,nbt={inGround:0b}] if entity @e[type=!zombified_piglin,distance=0.6..10,type=!#test:unalive] unless score @e[distance=0.6..10,type=!#test:unalive,sort=nearest,limit=1] pid = @s pid run function test:arr_aiming/sec
#execute if entity @s[tag=s_arrow,tag=!aimdone,tag=ending,nbt={inGround:0b}] if entity @e[distance=0.6..10,type=!#test:unalive] run function test:arr_aiming/sec

execute if entity @s[tag=s_arrow,nbt={inGround:0b}] run scoreboard players add @s test_ticking 1

#execute if entity @s[tag=s_arrow,tag=super_follow,tag=ending,nbt={inGround:1b}] run function test:arr_aiming/super_aiming
#execute if entity @s[tag=s_arrow,tag=super_follow,tag=ending,nbt={inGround:0b}] if block ~ ~-10 ~ air run function test:arr_aiming/super_aiming
