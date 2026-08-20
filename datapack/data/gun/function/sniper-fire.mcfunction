scoreboard players set @s gun_ray 0
scoreboard players set @s sniper_gun_cooldown 35
tag @s add gun_shooter
playsound minecraft:entity.blaze.shoot master @a[distance=..25] ~ ~ ~ 0.1 1
execute at @s anchored eyes run function gun:sniper-raycast
tag @s remove gun_shooter