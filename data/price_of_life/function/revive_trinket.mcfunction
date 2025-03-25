recipe take @s price_of_life:revive_1
recipe take @s price_of_life:revive_2
recipe take @s price_of_life:revive_3
recipe take @s price_of_life:revive_4

advancement revoke @s only price_of_life:craft_revive_4

effect give @s minecraft:poison 2 0 true
effect give @s minecraft:slowness 300 2 true
effect give @s minecraft:weakness 300 2 true
effect give @s minecraft:hunger 300 1 true

clear @s minecraft:knowledge_book

give @s ghast_tear[custom_name=[{"text":"Revive Trinket","color":"dark_red"}],lore=[[{"text":"Revives ghosts touching this item when dropped."}],[{"text":"Recipe veranderd per keer dat je dit craft,","italic":false,"bold":true,"color":"dark_green"}]],custom_data={Revive:1},enchantments={"minecraft:vanishing_curse":1}] 1