
function test:aiming/get_pos2
scoreboard players set posticking test_store 0
scoreboard players reset pos test_ticking

scoreboard players operation x3 test_store = x2 test_store
scoreboard players operation y3 test_store = y2 test_store
scoreboard players operation z3 test_store = z2 test_store

scoreboard players operation x3 test_store -= x1 test_store
scoreboard players operation y3 test_store -= y1 test_store
scoreboard players operation z3 test_store -= z1 test_store

#计算是否符合timing 如果是则将shoot_timing在store中设为1
function test:aiming/timing

scoreboard players operation x4 test_store = x3 test_store
scoreboard players operation y4 test_store = y3 test_store
scoreboard players operation z4 test_store = z3 test_store




###先搞成两秒后吧
scoreboard players set n test_store 11
scoreboard players operation x3 test_store *= n test_store
scoreboard players operation y3 test_store *= n test_store
scoreboard players operation z3 test_store *= n test_store

scoreboard players operation x3 test_store += x2 test_store
scoreboard players operation y3 test_store += y2 test_store
scoreboard players operation z3 test_store += z2 test_store


#summon armor_stand ~ ~ ~ {Tags:[aimpos],NoGravity:1b,Invisible:0b,Invulnerable:1b,Marker:0b}
execute as @e[tag=aimpos,limit=1,sort=nearest] at @s run function test:aiming/setaimpos
scoreboard players set posticking test_store 2
