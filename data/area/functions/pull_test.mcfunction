execute as @e[distance=14..15,type=!arrow,type=!armor_stand,type=!item,tag=!area_user] positioned as @s rotated as @s facing entity @e[tag=area_range,sort=nearest,limit=1] eyes run tp @s ^ ^ ^3
execute if entity @e[distance=14..15,type=!arrow,type=!armor_stand,type=!item,tag=!area_user] if entity @e[tag=area_user] run function area:pull