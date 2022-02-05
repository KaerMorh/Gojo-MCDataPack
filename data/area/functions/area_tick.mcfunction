execute as @e[tag=area_range,nbt={PortalCooldown:0}] at @s run function area:crash
execute as @e[tag=area_range] at @s unless entity @e[distance=..16,tag=area_user] run function area:crash

execute as @e[tag=area_range] at @s if entity @e[distance=14..15,tag=!area_user,type=!arrow,type=!armor_stand,type=!item] run function area:pull_test

execute as @e[tag=area_user] at @s unless entity @e[distance=..16,tag=area_range] run tag @s remove area_user
#execute as @e[tag=area_user] at @s run function area:gojo_in_area
execute as @e[tag=!area_user,tag=!freezen,type=!item,type=!armor_stand,type=!arrow] at @s if entity @e[distance=..14,tag=area_range] run function area:freeze
execute as @e[tag=freezen_select] at @s run function area:selector_freeze
execute as @e[tag=freezen] at @s unless entity @e[distance=..2,tag=freezen_select] run tag @s remove freezen
execute as @e[tag=drawing] at @s run function area:area_drawer
execute as @e[type=minecraft:arrow,tag=!gojo_use] at @s if entity @e[distance=..15,tag=area_range] run kill @s
