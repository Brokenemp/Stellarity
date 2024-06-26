data modify storage stellarity:temp aota.item set from entity @e[type=item,tag=stellarity.aota.netherite_leggings,distance=..1.5,limit=1] Item.tag

data modify storage stellarity:temp aota.enchants set from storage stellarity:temp aota.item.Enchantments
data modify storage stellarity:temp aota.trim set from storage stellarity:temp aota.item.Trim

kill @e[type=item,tag=stellarity.aota.chorus_plating,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.netherite_leggings,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.enderite_smithing_template,distance=..1.5,limit=1]

loot spawn ~ ~-.4 ~ loot stellarity:items/armor/chorus_champion/leggings
tag @e[type=item,limit=1,sort=nearest] add stellarity.aota.skip

data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.Enchantments set from storage stellarity:temp aota.enchants
data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.Trim set from storage stellarity:temp aota.trim

particle minecraft:happy_villager ~ ~-.4 ~ .2 .2 .2 0 15 normal
function stellarity:mechanics/altar_of_accursed/crafting/global_effects

data remove storage stellarity:temp aota.enchants
data remove storage stellarity:temp aota.trim
