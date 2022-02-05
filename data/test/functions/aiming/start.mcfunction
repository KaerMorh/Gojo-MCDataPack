#say start
scoreboard players set posticking test_store 0
scoreboard players reset pos test_ticking
function test:aiming/get_pos1
execute unless entity @e[tag=aimpos] run scoreboard players set shoot_timing test_store 0
execute if entity @e[tag=aimpos] run scoreboard players set posticking test_store 1


