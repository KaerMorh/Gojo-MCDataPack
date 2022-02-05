execute if entity @s[gamemode=!creative] store result score @s test_arrow run clear @s arrow 1
execute if entity @s[gamemode=!creative] if score @s test_arrow matches 0 run title @s actionbar {"text":"箭矢不足","color": "red","bold": true}
execute if score @s test_arrow matches 1 run function test:parabola/arrow
execute if entity @s[gamemode=creative] run function test:parabola/arrow
scoreboard players reset @s test_arrow