give @s minecraft:carrot_on_a_stick{test:tp,display:{Lore:['{"text":"魔法道具","color":"light_purple","italic":true}','{"text":"每次消耗4个青金石","color":"green","italic":false}'],Name:'{"text":"远古传送器","color":"gold","italic":false,"bold": true}'}}

#合成操作
clear @s minecraft:knowledge_book

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:knowledge_book"}},distance=..5]
playsound ui.toast.challenge_complete player @s ~ ~ ~
recipe take @s test:portal_recipe
tellraw @s [{"text":"已获得魔法道具：","color":"light_purple","italic":false,"bold": false},{"text":"远古传送器","color":"gold","italic":false,"bold": true}]
advancement revoke @s only test:portal