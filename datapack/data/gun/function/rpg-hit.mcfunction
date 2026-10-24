execute positioned ~ ~ ~ run summon minecraft:creeper ~ ~ ~ {Fuse:0s,ignited:3b}
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 20 force
execute as @e[distance=..3,type=!minecraft:armor_stand] run damage @s 2 minecraft:explosion by @a[tag=gun_shooter,limit=1]
execute positioned ~ ~ ~ run particle minecraft:explosion ~ ~ ~ 0 0 0 0.1 2 force
function gun:rpg-break-radius