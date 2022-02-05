summon minecraft:arrow ~ ~1.6 ~ {Tags:[s_arrow,super_follow],pickup:0b,PortalCooldown:840,crit:1b}
execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=pos_tag,limit=1] ^ ^ ^3
tag @s add arrow_shooter
execute positioned ~ ~1.6 ~ as @e[type=arrow,limit=1,sort=nearest] run function test:parabola/arr_set
tag @s remove arrow_shooter