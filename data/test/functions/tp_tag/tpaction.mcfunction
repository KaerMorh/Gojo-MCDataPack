function test:tp_tag/tp_ptk
execute as @e[tag=tptag] if score @s pid = #tp_user pid run tag @s add tping
title @a actionbar {"text": " "}
tp @s @e[limit=1,tag=tping,sort=nearest]
execute as @e[limit=1,tag=tping,sort=nearest] at @s run function test:tp_tag/tppoint

scoreboard players set @s test_tpCookDown 1

