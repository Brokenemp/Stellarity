data modify storage stellarity:temp aery_sword.lore set from storage stellarity:temp aery_sword.item.display.Lore

data remove storage stellarity:temp aery_sword.lore[-9]
# Total number of those checks should always be 
# lower than the total number of unlockable
# abilites by 1, since the counter increments AFTER
# the ability is actually unlocked
execute if score #ability_count stellarity.misc matches 1..7 run data remove storage stellarity:temp aery_sword.lore[-9]
execute if score #ability_count stellarity.misc matches 2..7 run data remove storage stellarity:temp aery_sword.lore[-9]
execute if score #ability_count stellarity.misc matches 3..7 run data remove storage stellarity:temp aery_sword.lore[-9]
execute if score #ability_count stellarity.misc matches 4..7 run data remove storage stellarity:temp aery_sword.lore[-9]
execute if score #ability_count stellarity.misc matches 5..7 run data remove storage stellarity:temp aery_sword.lore[-9]
execute if score #ability_count stellarity.misc matches 6..7 run data remove storage stellarity:temp aery_sword.lore[-9]
execute if score #ability_count stellarity.misc matches 7 run data remove storage stellarity:temp aery_sword.lore[-9]

execute if score #ability_count stellarity.misc matches 0 run data modify storage stellarity:temp aery_sword.lore insert -9 value '{"text": " "}'
execute if data storage stellarity:temp {aery_sword:{abilities:["piercing_cold"]}} run data modify storage stellarity:temp aery_sword.lore insert -9 value '{"translate":"stellarity.items.weapons.frigid_harvester.ability.tooltip","fallback":"%1$s: %$2$s","color":"#EEEEEE","italic":false,"with":[{"translate":"stellarity.items.weapons.frigid_harvester.ability.piercing_cold","fallback":"Piercing Cold","color":"#4BC6FF","italic":false},{"translate":"stellarity.items.weapons.frigid_harvester.ability.known","fallback":"KNOWN","color":"#F466CC","italic":false,"bold":true}]}'
execute if data storage stellarity:temp {aery_sword:{abilities:["arctic_wind"]}} run data modify storage stellarity:temp aery_sword.lore insert -9 value '{"translate":"stellarity.items.weapons.frigid_harvester.ability.tooltip","fallback":"%1$s: %$2$s","color":"#EEEEEE","italic":false,"with":[{"translate":"stellarity.items.weapons.frigid_harvester.ability.arctic_wind","fallback":"Arctic Wind","color":"#4BC6FF","italic":false},{"translate":"stellarity.items.weapons.frigid_harvester.ability.known","fallback":"KNOWN","color":"#F466CC","italic":false,"bold":true}]}'
execute if data storage stellarity:temp {aery_sword:{abilities:["frostburn"]}} run data modify storage stellarity:temp aery_sword.lore insert -9 value '{"translate":"stellarity.items.weapons.frigid_harvester.ability.tooltip","fallback":"%1$s: %$2$s","color":"#EEEEEE","italic":false,"with":[{"translate":"stellarity.items.weapons.frigid_harvester.ability.frostburn","fallback":"Frostburn","color":"#4BC6FF","italic":false},{"translate":"stellarity.items.weapons.frigid_harvester.ability.known","fallback":"KNOWN","color":"#F466CC","italic":false,"bold":true}]}'
execute if data storage stellarity:temp {aery_sword:{abilities:["embrittlement"]}} run data modify storage stellarity:temp aery_sword.lore insert -9 value '{"translate":"stellarity.items.weapons.frigid_harvester.ability.tooltip","fallback":"%1$s: %$2$s","color":"#EEEEEE","italic":false,"with":[{"translate":"stellarity.items.weapons.frigid_harvester.ability.ebrittlement","fallback":"Embrittlement","color":"#4BC6FF","italic":false},{"translate":"stellarity.items.weapons.frigid_harvester.ability.known","fallback":"KNOWN","color":"#F466CC","italic":false,"bold":true}]}'
execute if data storage stellarity:temp {aery_sword:{abilities:["frost_barrier"]}} run data modify storage stellarity:temp aery_sword.lore insert -9 value '{"translate":"stellarity.items.weapons.frigid_harvester.ability.tooltip","fallback":"%1$s: %$2$s","color":"#EEEEEE","italic":false,"with":[{"translate":"stellarity.items.weapons.frigid_harvester.ability.frost_barrier","fallback":"Frost Barrier","color":"#4BC6FF","italic":false},{"translate":"stellarity.items.weapons.frigid_harvester.ability.known","fallback":"KNOWN","color":"#F466CC","italic":false,"bold":true}]}'
execute if data storage stellarity:temp {aery_sword:{abilities:["anima_conduit"]}} run data modify storage stellarity:temp aery_sword.lore insert -9 value '{"translate":"stellarity.items.weapons.frigid_harvester.ability.tooltip","fallback":"%1$s: %$2$s","color":"#EEEEEE","italic":false,"with":[{"translate":"stellarity.items.weapons.frigid_harvester.ability.anima_conduit","fallback":"Anima Conduit","color":"#4BC6FF","italic":false},{"translate":"stellarity.items.weapons.frigid_harvester.ability.known","fallback":"KNOWN","color":"#F466CC","italic":false,"bold":true}]}'
execute if data storage stellarity:temp {aery_sword:{abilities:["echo"]}} run data modify storage stellarity:temp aery_sword.lore insert -9 value '{"translate":"stellarity.items.weapons.frigid_harvester.ability.tooltip","fallback":"%1$s: %$2$s","color":"#EEEEEE","italic":false,"with":[{"translate":"stellarity.items.weapons.frigid_harvester.ability.echo","fallback":"Echo","color":"#4BC6FF","italic":false},{"translate":"stellarity.items.weapons.frigid_harvester.ability.known","fallback":"KNOWN","color":"#F466CC","italic":false,"bold":true}]}'
execute if data storage stellarity:temp {aery_sword:{abilities:["cryonics"]}} run data modify storage stellarity:temp aery_sword.lore insert -9 value '{"translate":"stellarity.items.weapons.frigid_harvester.ability.tooltip","fallback":"%1$s: %$2$s","color":"#EEEEEE","italic":false,"with":[{"translate":"stellarity.items.weapons.frigid_harvester.ability.cryonics","fallback":"Cryonics","color":"#4BC6FF","italic":false},{"translate":"stellarity.items.weapons.frigid_harvester.ability.known","fallback":"KNOWN","color":"#F466CC","italic":false,"bold":true}]}'
data modify storage stellarity:temp aery_sword.lore insert -9 value '{"text": " "}'

execute if score #ability_count stellarity.misc matches 7 run data remove storage stellarity:temp aery_sword.lore[0]
execute if score #ability_count stellarity.misc matches 7 run data remove storage stellarity:temp aery_sword.lore[0]

item modify entity @s weapon.mainhand stellarity:aery_sword_update_abilities

function stellarity:items/frigid_harvester/effects/crack/ability
