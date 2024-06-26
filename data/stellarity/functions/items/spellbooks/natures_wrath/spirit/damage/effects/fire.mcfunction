execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.natures_wrath.spirit] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/damage/effects/as_marker/fire

scoreboard players set #damage kohara.misc 60

execute store result entity @s Fire short 1 run scoreboard players get #fire stellarity.misc

tag @p[predicate=stellarity:items/holding/spellbooks/natures_wrath] add kohara.attacker

function kohara:damage/calculate {armor_penetration:20,damage_boost_efficiency:0,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:natures_wrath",tag:"stellarity.damage.natures_wrath"}

