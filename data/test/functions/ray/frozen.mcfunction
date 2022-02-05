#kill @e[tag=fronzener,distance=..0.8]
tp @s ~ ~ ~ ~ ~
effect give @s slowness 5 3 true

#clone ~ ~ ~ ~-1 ~1 ~-1 ~-1 0 ~-1 replace move

fill ~ ~ ~ ~-1 ~1 ~-1 minecraft:ice replace minecraft:air
fill ~ ~ ~ ~-1 ~1 ~-1 minecraft:ice replace minecraft:water
fill ~ ~ ~ ~-1 ~1 ~-1 minecraft:ice replace #minecraft:flowers
fill ~ ~ ~ ~-1 ~1 ~-1 minecraft:ice replace minecraft:grass
#fill ~ ~ ~ ~ ~1 ~ minecraft:ice
data modify entity @s NoAI set value 1b
effect give @s[type=!#test:undead] instant_damage 1 1
effect give @s[type=#test:undead] instant_health 1 1


summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[fronzener],Duration:42,PortalCooldown:40}
tag @s add frozenInIce

scoreboard players add #unbreakIce test_store 1
#tp ~ -10 ~
#kill @s

#data modify entity @e[limit=1,sort=nearest,type=item] Item.tag set from entity @s SelectedItem.tag