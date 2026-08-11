scoreboard players set @s gun_ray 0
tag @s add gun_shooter
playsound minecraft:entity.blaze.shoot master @a[distance=..25] ~ ~ ~ 0.1 1
execute at @s anchored eyes run function gun:raycast
tag @s remove gun_shooter