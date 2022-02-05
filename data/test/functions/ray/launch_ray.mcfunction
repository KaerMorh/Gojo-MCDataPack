playsound entity.dolphin.jump player @a ~ ~ ~

execute unless score @s pid matches 1.. run function test:get_pid


summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,PortalCooldown:40,Tags:[unexplored]}


scoreboard players operation @e[tag=unexplored,tag=!aimed,limit=1,sort=nearest] pid = @s pid
execute as @s at @s run tp @e[tag=unexplored,tag=!aimed,limit=1,sort=nearest] ~ ~ ~ ~ ~
function test:ray/rayloop

scoreboard players add #unexploredRay test_store 1