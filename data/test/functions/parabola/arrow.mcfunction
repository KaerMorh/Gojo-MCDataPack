summon minecraft:arrow ~ ~1.6 ~ {Tags:[s_arrow],pickup:0b,PortalCooldown:140,crit:1b}
execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=pos_tag,limit=1] ^ ^ ^3
tag @s add arrow_shooter
execute positioned ~ ~1.6 ~ as @e[type=arrow,limit=1,sort=nearest] run function test:parabola/arr_set
tag @s remove arrow_shooter

scoreboard players add #s_arrowRemain test_store 1