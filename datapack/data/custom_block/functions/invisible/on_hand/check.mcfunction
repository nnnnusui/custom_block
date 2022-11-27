# check onhand
execute as @a[nbt={SelectedItem:{id:"minecraft:item_frame",tag:{EntityTag:{Item:{tag:{CustomModelData:1}}}}}}] at @s run function custom_block:invisible/on_hand/run
# check offhand
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:0}}]}] at @s run function custom_block:invisible/on_hand/run
