#By Nebulirion
execute facing entity @s feet rotated ~ 0 positioned as @s anchored feet positioned ^ ^ ^-0.3 run function test:_knockback
tp @e[tag=summon,type=slime] ~ -100 ~
execute as @e[tag=summon,type=slime] at @s run data modify entity @s NoAI set value 0
