tp @s ~ ~-0.5 ~
function stellarity:items/dragonblade/punch/special_fx/teleport

scoreboard players set #effect.duration stellarity.misc 200
scoreboard players set #effect.level stellarity.misc 1

execute if entity @s[type=!#kohara:boss,tag=!kohara.boss] run function stellarity:utils/status_effects/voided/apply

execute if score #hit stellarity.misc matches 0 run function stellarity:items/dragonblade/punch/damage/normal
execute if score #hit stellarity.misc matches 1 run function stellarity:items/dragonblade/punch/damage/hit_block

tag @s remove stellarity.items.dragonblade.in_punch
