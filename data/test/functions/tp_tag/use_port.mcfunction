execute as @s unless entity @s[scores={pid=1..}] run function test:get_pid
scoreboard players operation #tp_user pid = @s pid


#把自己的pid给#tp_user 然后其余所有的pid detect都是用#tp_user来检测的 如果三米以内有标记点 则将tpcookdown设成-1
execute as @e[tag=tptag,distance=..3] at @s run function test:tp_tag/pid_detect
execute if score #tp_samepid pid matches 1.. run title @s actionbar {"text":"标记点太近","color":"red","italic":false}
execute if score #tp_samepid pid matches 1.. run scoreboard players set @s test_tpCookDown -1

#附近没有标记点才可以传送
execute unless score @s test_tpCookDown matches -1 as @e[tag=tptag,distance=3..] at @s run function test:tp_tag/pid_detect
execute unless score @s test_tpCookDown matches -1 if score #tp_samepid pid matches 1.. run function test:tp_tag/tpaction


#检测青金石是否够用 在放置标记点时消耗青金石 
execute if entity @s[gamemode=!creative] store result score @s test_store run clear @s lapis_lazuli 0

execute if entity @s[gamemode=!creative] if score @s test_store matches ..4 run title @s actionbar {"text":"青金石不足","color": "red","bold": true}
execute if entity @s[gamemode=creative] run scoreboard players set @s test_store 100

execute unless score @s test_tpCookDown matches 1.. if score @s test_store matches 4.. unless score #tp_samepid pid matches 1.. run function test:tp_tag/set_tp_tag

scoreboard players reset @s test_tpCookDown
scoreboard players reset @s test_store
scoreboard players reset #tp_user pid
scoreboard players reset #tp_samepid pid



