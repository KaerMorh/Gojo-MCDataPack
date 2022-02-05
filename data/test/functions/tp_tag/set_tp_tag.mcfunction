execute as @e[tag=tptag] unless score @s pid matches ..1 run kill @s
execute if entity @s[gamemode=!creative] run clear @s lapis_lazuli 4
summon armor_stand ~ ~ ~ {Tags:[tptag],Invulnerable:1b,Invisible:1b,NoGravity:1b,Silent:1b,Marker:1b,HasVisualFire:0b,CustomNameVisible:1b,CustomName:'"被标记的传送点"'}
execute as @e[tag=tptag] unless score @s pid matches ..1 run scoreboard players operation @s pid = #tp_user pid
#将盔甲架pid设置
title @s actionbar {"text":"标记点已设置","color":"green","italic":false}