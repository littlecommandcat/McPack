scoreboard players add @s gun_ray 1
particle minecraft:end_rod ^ ^ ^0.3 0 0 0 0.001 1 force
execute positioned ^ ^ ^0.3 as @e[tag=!gun_shooter,dx=0,dy=0,dz=0,limit=1,sort=nearest] run function gun:normal-hit
execute unless entity @e[tag=!gun_shooter,dx=0,dy=0,dz=0] if score @s gun_ray matches ..159 positioned ^ ^ ^0.25 if block ~ ~ ~ air run function gun:normal-raycast
execute unless entity @e[tag=!gun_shooter,dx=0,dy=0,dz=0] if score @s gun_ray matches ..159 positioned ^ ^ ^0.25 if block ~ ~ ~ #gun:raycast_pass run setblock ~ ~ ~ air destroy