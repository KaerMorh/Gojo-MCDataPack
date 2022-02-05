tp @a[distance=..2,tag=freezen] ~ ~ ~ ~ ~
gamemode survival @a[distance=..2,tag=freezen]
#effect give @e[distance=..2,tag=freezen] night_vision 1 1 true
effect give @a[distance=..2,tag=freezen] levitation 1 1 true
effect give @a[distance=..2,tag=freezen] slowness 1 8 true
effect give @a[distance=..2,tag=freezen] weakness 1 1 true
effect give @a[distance=..2,tag=freezen] mining_fatigue 1 1 true
effect give @a[distance=..2,tag=freezen] hunger 1 8 true
#effect give @e[distance=..2,tag=freezen] glowing 1 1 true 
execute unless entity @e[tag=area_range,distance=..16] run kill @s
execute unless entity @e[tag=freezen,distance=..2] run kill @s