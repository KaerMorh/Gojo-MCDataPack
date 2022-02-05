execute if entity @s[nbt={SelectedItem:{tag:{trick:area_crash}}}] run function area:close_area
execute if entity @s[nbt={SelectedItem:{tag:{trick:gojo_area}}}] run function area:launch
scoreboard players reset @s area_rightclick