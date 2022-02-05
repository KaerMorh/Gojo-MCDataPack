tp @s ~ ~ ~ ~4 ~
#setblock ^ ^ ^15 minecraft:black_concrete
#setblock ^ ^ ^-15 minecraft:black_concrete
#setblock ^-15 ^ ^ minecraft:black_concrete
#setblock ^15 ^ ^ minecraft:black_concrete
setblock ^ ^ ^14 minecraft:black_concrete
setblock ^ ^ ^-14 minecraft:black_concrete
setblock ^-14 ^ ^ minecraft:black_concrete
setblock ^14 ^ ^ minecraft:black_concrete
scoreboard players add @s area_circle 4
execute if score @s area_circle matches 380.. run tag @s remove drawing
execute if score @s area_circle matches 380.. run scoreboard players reset @s area_circle
