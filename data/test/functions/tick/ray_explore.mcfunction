execute as @e[tag=unexplored,nbt={PortalCooldown:0}] at @s run function test:ray/exploreloop
execute unless entity @e[tag=unexplored] run scoreboard players set #unexploredRay test_store 0

execute unless entity @e[tag=unexplored] run title @a actionbar {"text": " "}