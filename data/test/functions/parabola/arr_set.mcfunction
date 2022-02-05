data modify entity @s Motion set from entity @e[tag=pos_tag,limit=1] Pos
data modify entity @s Owner set from entity @a[limit=1,sort=nearest,tag=arrow_shooter] UUID
scoreboard players operation @s pid = @a[limit=1,sort=nearest,tag=arrow_shooter] pid
playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 2
