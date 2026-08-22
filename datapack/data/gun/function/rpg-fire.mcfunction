scoreboard players set @s gun_ray 0
scoreboard players set @s rpg_cooldown 100
tag @s add gun_shooter
playsound minecraft:entity.creeper.primed master @a[distance=..30] ~ ~ ~ 1 2
execute at @s anchored eyes run function gun:rpg-raycast
tag @s remove gun_shooter