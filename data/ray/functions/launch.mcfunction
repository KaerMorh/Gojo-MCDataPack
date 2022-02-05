#开火之后的发射函数 运行在execute的开火判定中
#loop 没有做在指令包中 execute as @e[tag=aimed,type=minecraft:armor_stand] at @s run tp @s ^ ^ ^1
#execute as @e[tag=ray1] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force
summon armor_stand ~ ~ ~ {Tags:[ray,ray1],PortalCooldown:100,Maker:0b,Invisible:1b,NoGravity:1b}
execute as @e[tag=ray,tag=!aimed,type=minecraft:armor_stand,limit=1,sort=nearest] run function ray:aim

