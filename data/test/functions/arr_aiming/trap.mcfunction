#前置指令
#循环运行execute as @e[type=arrow,distance=..10,nbt={inGround:1b}] at @s if entity @e[type=!#test:unalive,distance=..10] run function test:arr_aiming/trap
data modify entity @s inGround set value 0b
tp @s ~ ~0.5 ~
data modify entity @s NoGravity set value 0b

execute as @s facing entity @e[limit=1,sort=nearest,type=!#test:unalive] eyes positioned 0.0 0.0 0.0 run tp @e[tag=pos_tag,limit=1] ^ ^ ^2
particle minecraft:lava ^ ^ ^0.3 0 0 0 2 3
playsound minecraft:ui.toast.in player @a ~ ~ ~
data modify entity @s damage set value 3.5d

function test:parabola/arr_set