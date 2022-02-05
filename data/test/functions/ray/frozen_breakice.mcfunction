fill ~ ~ ~ ~-1 ~1 ~-1 minecraft:air replace minecraft:ice
playsound block.glass.break block @a ~ ~1 ~
playsound block.glass.break block @a ~ ~ ~
playsound block.glass.break block @a ~-1 ~1 ~-1
playsound block.glass.break block @a ~-1 ~ ~-1

particle minecraft:item minecraft:ice ~ ~1 ~ 0.8 1 0.8 0.08 200 force

#fill ~ ~ ~ ~-1 ~1 ~-1 minecraft:air destroy
#clone ~-1 0 ~-1 ~ 1 ~ ~-1 ~ ~-1 replace move

execute as @e[tag=frozenInIce,distance=..0.2,limit=1,sort=nearest] at @s run data modify entity @s NoAI set value 0b
execute as @e[tag=frozenInIce,distance=..0.2,limit=1,sort=nearest] at @s run tag @s remove frozenInIce
tag @a remove frozenInIce
kill @s