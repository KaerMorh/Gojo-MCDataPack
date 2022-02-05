scoreboard players add @s test_Distance 1

execute if score @s test_Distance matches ..20 if block ~ ~ ~ sandstone if block ~ ~ ~ red_wool positioned ~ ~ ~ align yxz run function test:build/mark



execute if score @s test_Distance matches ..20 unless block ~ ~ ~ sandstone if block ~ ~ ~ red_wool positioned ^ ^ ^0.5 run function test:build/selecteloop
scoreboard players reset @s test_Distance
#execute if block ~ ~ ~ sandstone positioned ^ ^ ^0.8 align yxz run function test:build/mark