particle end_rod ~ ~1.22 ~ .3 .55 .3 0.02 11 normal @s
particle dust 1 0 1 1 ~ ~1 ~ .3 .55 .3 0 40 normal @s

playsound minecraft:block.portal.travel player @s ~ ~ ~ 0.035 2
playsound minecraft:item.book.page_turn player @s
particle enchant ~ ~1 ~ .4 .55 .4 0 30 normal

title @s actionbar {"translate":"stellarity.items.spellbooks.notification","fallback": "Your %s is ready to be used again","color":"dark_purple","with":[{"translate":"stellarity.items.spellbooks.return","fallback":"Tome of Return"}]}
