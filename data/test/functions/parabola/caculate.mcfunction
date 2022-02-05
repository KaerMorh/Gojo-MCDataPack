summon minecraft:arrow ~ ~1.6 ~
execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=pos_tag,limit=1] ^ ^ ^2
execute positioned ~ ~1.6 ~ run data modify entity @e[type=arrow,limit=1,sort=nearest] Motion set from entity @e[tag=pos_tag,limit=1] Pos