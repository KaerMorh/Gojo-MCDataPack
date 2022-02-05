scoreboard players operation posx test_store = x4 test_store
scoreboard players operation posx test_store += y4 test_store
scoreboard players operation posx test_store += z4 test_store
scoreboard players operation posx test_store -= x3 test_store
scoreboard players operation posx test_store -= y3 test_store
scoreboard players operation posx test_store -= z3 test_store
execute if score posx test_store matches -50..50 run scoreboard players set shoot_timing test_store 1
#execute if score posx test_store matches -50..50 run say yes
execute unless score posx test_store matches -250..250 run scoreboard players set shoot_timing test_store 0
#execute unless score posx test_store matches -250..250 run say no