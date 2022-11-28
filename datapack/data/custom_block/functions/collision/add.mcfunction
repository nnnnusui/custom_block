# val
function custom_block:val/placeable

execute if entity @s[tag=placeable] run setblock ~ ~ ~ minecraft:barrier
playsound minecraft:block.stone.place block @a[distance=0..5] ~ ~ ~ 1 1.2 1
tag @s add placed
