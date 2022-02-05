#execute if score @s test_Distance matches 3..95 run particle portal ~ ~ ~ 0 0 0 2.3 25 force
particle minecraft:dust 0.537 0.749 0.992 15 ~ ~ ~ 0 0 0 0 0 force
#particle minecraft:dust 0.2 0.25 2.4 15 ~ ~ ~
execute if score @s test_Distance matches 3..30 run execute as @e[type=!#test:unalive,distance=..2.5,tag=!frozenInIce,type=!minecraft:player] at @s align xyz run function test:ray/frozen
execute if score @s test_Distance matches 4..30 run execute as @a[distance=..2.2,tag=!frozenInIce] at @s align xyz run function test:ray/frozen
#execute if score @s test_Distance matches 3..95 run execute as @e[type=!#test:unalive,distance=..1,type=!minecraft:player] at @s align xyz positioned ~0.5 ~ ~0.5 run function test:ray/frozen
#execute if score @s test_Distance matches 15..95 run summon tnt ~ ~ ~
scoreboard players add @s test_Distance 1
execute if score @s test_Distance matches ..30 positioned ^ ^ ^1 run function test:ray/frozen_rayloop
scoreboard players reset @s test_Distance