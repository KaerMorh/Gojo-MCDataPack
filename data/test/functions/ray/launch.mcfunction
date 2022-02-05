scoreboard players operation #pid_2 pid = @s pid

execute as @e[tag=unexplored] unless score @s pid = #pid_2 pid run scoreboard players set #ray test_store 1
execute as @e[tag=unexplored] if score @s pid = #pid_2 pid run scoreboard players set #ray test_store 0
execute unless entity @e[tag=unexplored] run scoreboard players set #ray test_store 1

execute if score #ray test_store matches 1 run function test:ray/launch_ray
execute unless score #ray test_store matches 1 run title @s actionbar {"text":"技能冷却","color": "red","bold": true}
scoreboard players reset #ray test_store
#execute if entity @e[distance=..5,tag=unexplored] run title @s actionbar {"text":"技能冷却","color": "red","bold": true}
#execute unless entity @e[distance=..5,tag=unexplored] run function test:ray/launch_ray