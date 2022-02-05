execute as @e[limit=1,sort=nearest] at @s run data modify entity @s NoAI set value 1
tag @s add unfreezen
data modify entity @s NoAI set value 1
playsound ambient.basalt_deltas.loop player @s ~ ~ ~
gamemode survival @s
summon armor_stand ^ ^ ^ {Tags:[freezen_select],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Silent:1b}
tp @e[tag=freezen_select,sort=nearest,limit=1,tag=unfreezen] ~ ~ ~ ~ ~
tag @s remove unfreezen
tag @s add freezen
title @s actionbar {"text":"你被拖入了五条悟的领域 GG","color":"dark_purple","bold":true}
