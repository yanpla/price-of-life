# Gamerules
gamerule doImmediateRespawn false
gamerule spectatorsGenerateChunks true

# Revive
execute run scoreboard players add pol_settings reviveTimer 1
execute if score pol_settings reviveTimer matches 12.. run function price_of_life:revive

# Detect deaths
execute as @a[scores={deaths=1..}] run function price_of_life:death

# Ghost particles
execute at @a[gamemode=spectator,scores={dead=1..}] run particle dust{color:[1.000,1.000,1.000],scale:1} ~ ~1.5 ~ 0.5 0.5 0.5 0 2 force

# Possess
execute at @a[gamemode=spectator,scores={dead=1..}] run tag @a[distance=..1,gamemode=survival] add Possessed
effect give @a[tag=Possessed] minecraft:strength 1 0 true
effect give @a[tag=Possessed] minecraft:speed 1 0 true
effect give @a[tag=Possessed] minecraft:resistance 1 0 true
effect give @a[tag=Possessed] minecraft:glowing 1 0 true
tag @a remove Possessed