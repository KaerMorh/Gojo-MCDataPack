scoreboard objectives remove pid
kill @e[tag=tptag]
kill @e[tag=s_arrow]
kill @e[tag=unexplored]




kill @e[type=area_effect_cloud]
scoreboard objectives add test_arrow dummy
scoreboard objectives add test_rightclick minecraft.used:carrot_on_a_stick
scoreboard objectives add test_Distance dummy
scoreboard objectives add test_tpCookDown dummy
scoreboard objectives add test_store dummy
scoreboard objectives add test_ticking dummy
scoreboard objectives add test_arrow_aim dummy
scoreboard objectives add pid dummy
scoreboard objectives add mined_Barrel minecraft.mined:barrel

scoreboard players add #pid pid 1
scoreboard players set #s_arrowRemain test_store 0
scoreboard players set #unexploredRay test_store 0

forceload add 0 0
summon area_effect_cloud 0.0 0.0 0.0 {Tags:[pos_tag],Duration:2147483647}
tellraw @a ["-----------------"]
tellraw @a ["§2测试系统加载完成"]
tellraw @a ["§3所有标记点已清除"]
tellraw @a ["-----------------"]