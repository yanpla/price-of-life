scoreboard players set @s deaths 0
scoreboard players set @s dead 1
scoreboard players add @s deathsAmount 1

gamemode spectator
execute if dimension minecraft:overworld run spawnpoint @s ~ ~ ~
execute if dimension minecraft:the_nether run spawnpoint @s ~ ~ ~