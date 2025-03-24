execute at @e[nbt={Item:{components:{"minecraft:custom_data":{Revive:1}}},PickupDelay:0s}] run tag @p[distance=..2,gamemode=spectator] add Revive
execute at @a[tag=Revive] run kill @e[nbt={Item:{components:{"minecraft:custom_data":{Revive:1}}}},limit=1,distance=..5]
execute at @a[tag=Revive] run gamemode survival @p
scoreboard players set @a[tag=Revive] dead 0

execute at @a[tag=Revive] run effect give @p minecraft:slowness 60 1 true
execute at @a[tag=Revive] run effect give @p minecraft:weakness 60 1 true
execute at @a[tag=Revive] run effect give @p minecraft:glowing 60 1 true
execute at @a[tag=Revive] run effect give @p minecraft:hunger 60 1 true
execute at @a[tag=Revive] run effect give @p minecraft:mining_fatigue 60 1 true
execute at @a[tag=Revive] run effect give @p minecraft:poison 2 0 true

execute at @a[tag=Revive] run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 10 1
execute at @a[tag=Revive] if dimension minecraft:overworld run spawnpoint @p
execute at @a[tag=Revive] if dimension minecraft:the_nether run spawnpoint @p

# adjust health
execute as @a[scores={deathsAmount=1}] run attribute @s minecraft:max_health base set 18
execute as @a[scores={deathsAmount=2}] run attribute @s minecraft:max_health base set 16
execute as @a[scores={deathsAmount=3}] run attribute @s minecraft:max_health base set 14
execute as @a[scores={deathsAmount=4}] run attribute @s minecraft:max_health base set 12
execute as @a[scores={deathsAmount=5}] run attribute @s minecraft:max_health base set 10
execute as @a[scores={deathsAmount=6}] run attribute @s minecraft:max_health base set 8
execute as @a[scores={deathsAmount=7}] run attribute @s minecraft:max_health base set 6
execute as @a[scores={deathsAmount=8}] run attribute @s minecraft:max_health base set 4
execute as @a[scores={deathsAmount=9}] run attribute @s minecraft:max_health base set 2
execute as @a[scores={deathsAmount=10..}] run attribute @s minecraft:max_health base set 1

execute at @a[tag=Revive] run tag @p remove Revive
scoreboard players set pol_settings reviveTimer 0
