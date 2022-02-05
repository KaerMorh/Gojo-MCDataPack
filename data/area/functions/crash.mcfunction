#playsound
clear @a minecraft:carrot_on_a_stick{trick:area_crash} 999
execute positioned ~ ~1 ~ run playsound minecraft:entity.elder_guardian.ambient player @a
kill @e[distance=..16,tag=freezen_select]
kill @e[distance=..16,tag=draw_a_circle]
effect clear @e[distance=..16,tag=!area_user] levitation
effect clear @e[tag=area_user] night_vision
tag @e[tag=area_user,distance=..16] remove area_user
clone ~ 220 ~ ~32 248 ~32 ~-16 ~-14 ~-16 replace move
fill ~-1 220 ~-1 ~33 219 ~33 minecraft:air
fill ~-1 220 ~-1 ~-1 248 ~33 minecraft:air
fill ~-1 220 ~-1 ~33 248 ~-1 minecraft:air
fill ~-1 220 ~33 ~33 248 ~33 minecraft:air
fill ~33 220 ~-1 ~33 248 ~33 minecraft:air
#fill ~-2 220 ~-2 ~34 219 ~34 minecraft:air
scoreboard players remove #area:using gojo_area_on 1
clear @a[tag=area_user] 
execute as @e[distance=..16,type=ender_dragon] at @s run data modify entity @s NoAI set value 0
execute as @e[distance=..16,type=wither] at @s run data modify entity @s NoAI set value 0
execute as @e[distance=..16,type=villager] at @s run data modify entity @s NoAI set value 0
kill @s