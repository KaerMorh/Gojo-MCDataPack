execute as @a[scores={test_rightclick=1..}] at @s run function test:rightclick
execute as @a[scores={mined_Barrel=1..}] at @s run function test:build/break


execute if score posticking test_store matches 1 run function test:aiming/main
execute if score posticking test_store matches 2 run function test:aiming/start

execute if score #s_arrowRemain test_store matches 1.. run function test:tick/tick_s_arrow1
#execute as @a[nbt={SelectedItem:{id:"minecraft:red_wool"}}] at @s run function test:build/select_launch
#execute as @e[type=area_effect_cloud,tag=build_selector,nbt={PortalCooldown:1}] at @s run function test:build/unmark


execute if score #unbreakIce test_store matches 1.. run function test:tick/ice_breaker
execute if score #unexploredRay test_store matches 1.. run function test:tick/ray_explore
#execute as @e[tag=unexplored,nbt={PortalCooldown:0}] at @s run function test:ray/exploreloop

