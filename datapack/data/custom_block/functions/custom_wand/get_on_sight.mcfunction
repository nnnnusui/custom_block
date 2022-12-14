scoreboard players add progress on_sight_scan 1
execute if score progress on_sight_scan matches 1 run tag @s add on_scan

particle minecraft:dripping_water ~ ~ ~ 0 0 0 0 1 force @s

# val on_scan
execute unless score progress on_sight_scan matches 1..50 run tag @s remove on_scan
# val detected
execute positioned ^ ^ ^ if entity @e[distance=..1,sort=nearest,limit=1,type=minecraft:item_frame,tag=custom_block,tag=placed] run tag @s add detected
# val placeable
function custom_block:val/placeable

# scan next. (recursive execute)
execute if entity @s[tag=on_scan] if entity @s[tag=placeable] positioned ^ ^ ^0.1 run function custom_block:custom_wand/get_on_sight

# run custom_block:break at detected item_frame.
execute if score breaked on_sight_scan matches 0 positioned ^ ^ ^ as @e[distance=..1,sort=nearest,limit=1,type=minecraft:item_frame,tag=custom_block,tag=placed] at @s run function custom_block:invisible/break
