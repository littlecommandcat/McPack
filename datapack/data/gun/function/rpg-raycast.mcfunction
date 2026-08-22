scoreboard players add @s gun_ray 1
particle minecraft:flame ^ ^ ^0.3 0 0 0 0.03 1 force
execute positioned ^ ^ ^0.3 as @e[tag=!gun_shooter,dx=0,dy=0,dz=0,limit=1,sort=nearest] run function gun:rpg-hit
execute unless entity @e[tag=!gun_shooter,dx=0,dy=0,dz=0] if score @s gun_ray matches ..139 positioned ^ ^ ^0.25 if block ~ ~ ~ air run function gun:rpg-raycast
execute unless entity @e[tag=!gun_shooter,dx=0,dy=0,dz=0] if score @s gun_ray matches ..139 positioned ^ ^ ^0.25 unless block ~ ~ ~ air run function gun:rpg-hit