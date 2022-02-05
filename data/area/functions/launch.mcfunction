tag @s add area_user
scoreboard players add #area:using gojo_area_on 1
clear @a minecraft:carrot_on_a_stick{trick:gojo_area} 999
#保存区域大小 32 26 32
#fill ~16 ~14 ~16 ~-16 ~-14 ~-16 air replace water
#fill ~16 ~14 ~16 ~-16 ~-14 ~-16 air replace lava
fill ~-1 220 ~-1 ~33 219 ~33 minecraft:barrier
fill ~-1 220 ~-1 ~-1 248 ~33 minecraft:barrier
fill ~-1 220 ~-1 ~33 248 ~-1 minecraft:barrier
fill ~-1 220 ~33 ~33 248 ~33 minecraft:barrier
fill ~33 220 ~-1 ~33 248 ~33 minecraft:barrier
clone ~16 ~14 ~16 ~-16 ~-14 ~-16 ~ 220 ~ replace force
playsound entity.wither.spawn player @a[distance=..35]
function area:pull
tellraw @a ["§5领域展开:无量空处"]

function area:draw_a_circle_16
summon armor_stand ~ ~ ~ {Tags:[area_range],PortalCooldown:500,Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Silent:1b}
give @p minecraft:carrot_on_a_stick{trick:area_crash,display:{Name:'{"text":"领域解除","color":"dark_red","italic":false}'}}
effect give @s night_vision 40 2 true
effect give @s strength 40 2 true
effect give @s haste 40 2 true
effect give @s jump_boost 40 3 true
effect give @s speed 40 5 true
effect give @s regeneration 40 8 true
effect give @s resistance 40 5 true
effect give @s fire_resistance 40 2 true
effect give @s water_breathing 40 2 true
effect give @s saturation 40 2 true
effect give @s dolphins_grace 40 2 true
effect give @s luck 40 2 true
effect give @s conduit_power 40 2 true
#画圆