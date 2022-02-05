execute as @e[tag=fronzener,nbt={PortalCooldown:0}] at @s run function test:ray/frozen_breakice
execute unless entity @e[tag=fronzener] run scoreboard players set #unbreakIce test_store 0
execute unless entity @e[tag=fronzener] as @e[tag=frozenInIce] at @s run data modify entity @s NoAI set value 0b
execute unless entity @e[tag=fronzener] run tag @e remove frozenInIce
