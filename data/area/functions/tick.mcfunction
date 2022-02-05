
execute as @a[scores={area_rightclick=1..}] at @s run function area:rightclick

execute if entity @a[tag=area_user] run function area:area_tick