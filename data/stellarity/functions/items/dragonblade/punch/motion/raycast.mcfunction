tag @s add stellarity.items.dragonblade.in_punch

execute if score #hit stellarity.misc matches 0 unless block ^ ^ ^1 #stellarity:non_solid run function stellarity:items/dragonblade/punch/motion/hit_block

particle minecraft:dragon_breath ^ ^1 ^ .1 .1 .1 0.01 1
particle minecraft:smoke ^ ^1 ^ .1 .1 .1 0.01 1

scoreboard players add #particles2 stellarity.misc 1
execute if score #particles2 stellarity.misc matches 1 positioned ^ ^1 ^ rotated ~90 ~ run function stellarity:items/dragonblade/punch/special_fx/end_rod_secondary
execute if score #particles2 stellarity.misc matches 29 run scoreboard players set #particles2 stellarity.misc 0

scoreboard players add #distance stellarity.misc 1
execute if block ^ ^ ^ #stellarity:liquids run scoreboard players add #distance stellarity.misc 1

execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc = #max_distance stellarity.misc run function stellarity:items/dragonblade/punch/motion/not_hit_block
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc < #max_distance stellarity.misc positioned ^ ^ ^0.1 run function stellarity:items/dragonblade/punch/motion/raycast
