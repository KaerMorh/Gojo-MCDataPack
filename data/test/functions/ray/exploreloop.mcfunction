scoreboard players add @s test_Distance 1
#particle explosion_emitter ~ ~0.5 ~ 0 0 0 0 0 force
#playsound entity.generic.explode player @a ~ ~ ~
#execute if score @s test_Distance matches 15..95 run summon tnt ~ ~0.5 ~
#execute if score @s test_Distance matches 15..95 run summon creeper ~ ~0.5 ~ {Fuse:-1,ExplosionRadius:5,NoGravity:0b}
scoreboard players operation #pid_1 pid = @s pid
#scoreboard players set #same_pid pid 0
#execute if score @s test_Distance matches 15..95 positioned ~ ~0.5 ~ run effect give @a[distance=..5,tag=!explorehurt] instant_damage 1 2 true
execute as @a[distance=..8] unless score @s pid = #pid_1 pid run effect give @s instant_damage 1 2 true

execute positioned ~ ~0.5 ~ run effect give @e[type=!minecraft:player,distance=..5,tag=!explorehurt,type=!#test:undead] instant_damage 1 2 true
execute positioned ~ ~0.5 ~ run effect give @e[distance=..5,tag=!explorehurt,type=#test:undead] instant_health 1 2 true
execute as @e[distance=..5] at @s run tag @s add explorehurt
execute if score @s test_Distance matches 7..95 run playsound entity.generic.explode player @a ~ ~ ~ 1.5
execute if score @s test_Distance matches 7..95 run particle explosion_emitter ~ ~0.5 ~ 0 0 0 0 0 force

#scoreboard players reset #same_pid pid
execute if score @s test_Distance matches ..95 positioned ^ ^ ^1 run function test:ray/exploreloop
tag @e remove explorehurt


kill @s
#scoreboard players remove #unexploredRay test_store 1