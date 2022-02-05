#在弹道末端且无tag aimdone的s_arrow进行如此操作
#execute as @e[tag=s_arrow,tag=!aimdone,nbt=] at @s run function test:arr_aiming/sec
#function test:arr_aiming/get_pos1
#execute as @e[distance=..10,sort=nearest] at @s run function test:arr_aiming/get_pos2

execute as @s facing entity @e[limit=1,sort=nearest,type=!#test:unalive,type=!zombified_piglin] eyes positioned 0.0 0.0 0.0 run tp @e[tag=pos_tag,limit=1] ^ ^ ^2
particle minecraft:lava ^ ^ ^0.3 0 0 0 2 3
data modify entity @s damage set value 3.5

#scoreboard players operation x2 test_arrow_aim -= x1 test_arrow_aim
#scoreboard players operation y2 test_arrow_aim -= y1 test_arrow_aim
#scoreboard players operation z2 test_arrow_aim -= z1 test_arrow_aim

#execute store result entity @s Motion[0] double 0.001 run scoreboard players get x2 test_arrow_aim
#execute store result entity @s Motion[1] double 0.001 run scoreboard players get y2 test_arrow_aim
#execute store result entity @s Motion[2] double 0.001 run scoreboard players get z2 test_arrow_aim
function test:parabola/arr_set

tag @s add aimdone