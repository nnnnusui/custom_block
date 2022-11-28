# val placeable
execute if block ~ ~ ~ minecraft:air run tag @s add placeable
execute if block ~ ~ ~ minecraft:water run tag @s add placeable
execute if block ~ ~ ~ minecraft:lava run tag @s add placeable

execute if entity @s[tag=placeable] run setblock ~ ~ ~ minecraft:barrier
playsound minecraft:block.stone.place block @a[distance=0..5] ~ ~ ~ 1 1.2 1
tag @s add placed
