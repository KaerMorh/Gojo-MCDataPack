execute as @e[tag=being_aimed] run tag @s remove being_aimed
kill @e[tag=aimpos]
tag @s add being_aimed
summon armor_stand ~ ~ ~ {Tags:[aimpos],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
function test:aiming/start