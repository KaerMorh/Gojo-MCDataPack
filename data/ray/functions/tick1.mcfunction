execute as @e[tag=aimed,tag=ray1] at @s run function ray:loop_ray1
execute as @e[tag=explore,type=armor_stand] at @s run function ray:explore
execute as @a[scores={rightclick=1..}] at @s run function ray:rightclick
execute as @e[tag=ray1,nbt={PortalCooldown:0}] at @s run tag @s add explore
