tag @s remove stellarity.items.elektra_shield.using
scoreboard players reset @s stellarity.items.elektra_shield.animation

effect clear @s minecraft:resistance
effect clear @s minecraft:levitation

attribute @s generic.knockback_resistance modifier remove fc68f5ed-4b66-4a16-8bfa-76c993f23480

kill @e[type=marker,tag=stellarity.items.elektra_shield.marker,limit=1,sort=nearest]
execute if score @s stellarity.items.elektra_shield.zap_count matches 5 run advancement grant @s only stellarity:adventure/electrified
scoreboard players reset @s stellarity.items.elektra_shield.zap_count

#tp @s ~ ~-0.01 ~
