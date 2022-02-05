execute if score @s test_Distance matches 7..95 run particle portal ~ ~ ~ 0 0 0 2.3 25 force
particle end_rod ~ ~ ~ 0 0 0 0 0 force
execute if score @s test_Distance matches 15..95 run effect give @e[distance=..5] levitation 2 1 true
execute if score @s test_Distance matches 15..95 run effect give @e[distance=..5] slowness 2 1 true
#execute if score @s test_Distance matches 15..95 run summon tnt ~ ~ ~
scoreboard players add @s test_Distance 1
execute if score @s test_Distance matches ..128 positioned ^ ^ ^1 run function test:ray/rayloop
scoreboard players reset @s test_Distance