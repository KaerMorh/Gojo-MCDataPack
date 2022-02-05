execute store result score #frozenDamage test_store run data get entity @s SelectedItem.tag.Damage
execute if score #frozenDamage test_store matches 25.. run item replace entity @s weapon.mainhand with minecraft:air

execute if score #frozenDamage test_store matches 25.. run playsound minecraft:entity.item.break player @s ~ ~ ~


execute if entity @s[gamemode=!creative] store result score @s test_store run clear @s lapis_lazuli 0

execute if entity @s[gamemode=!creative] if score @s test_store matches ..4 run title @s actionbar {"text":"青金石不足","color": "red","bold": true}
execute if entity @s[gamemode=creative] run scoreboard players set @s test_store 100
execute if score @s test_store matches 4.. run clear @s[gamemode=!creative] minecraft:lapis_lazuli 4
execute if score @s test_store matches 4.. run item modify entity @s[gamemode=!creative] weapon.mainhand test:damage1
execute if score @s test_store matches 4.. run function test:ray/frozen_launch

scoreboard players reset @s test_store
scoreboard players reset #frozenDamage test_store
