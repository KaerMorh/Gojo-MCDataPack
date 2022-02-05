execute as @e[tag=s_arrow] at @s run function test:tick/tick_s_arrow

execute unless entity @e[tag=s_arrow] run scoreboard players set #s_arrowRemain test_store 0
