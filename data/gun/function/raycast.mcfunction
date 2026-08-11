scoreboard players add @s gun_ray 1
particle minecraft:flame ^ ^ ^0.25 0 0 0 0 1 force
execute positioned ^ ^ ^0.25 as @e[tag=!gun_shooter,dx=0,dy=0,dz=0,limit=1,sort=nearest] run function gun:hit
execute unless entity @e[tag=!gun_shooter,dx=0,dy=0,dz=0] if score @s gun_ray matches ..199 positioned ^ ^ ^0.25 run function gun:raycast