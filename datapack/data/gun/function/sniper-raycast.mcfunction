scoreboard players add @s gun_ray 1
particle minecraft:end_rod ^ ^ ^0.3 0 0 0 0.03 1 force
execute positioned ^ ^ ^0.3 as @e[tag=!gun_shooter,dx=0,dy=0,dz=0,limit=1,sort=nearest] run function gun:sniper-hit
execute unless entity @e[tag=!gun_shooter,dx=0,dy=0,dz=0] if score @s gun_ray matches ..499 positioned ^ ^ ^0.25 if block ~ ~ ~ #gun:raycast_break run setblock ~ ~ ~ air destroy
execute unless entity @e[tag=!gun_shooter,dx=0,dy=0,dz=0] if score @s gun_ray matches ..499 positioned ^ ^ ^0.25 if block ~ ~ ~ #gun:raycast_pass run function gun:sniper-raycast
execute unless entity @e[tag=!gun_shooter,dx=0,dy=0,dz=0] if score @s gun_ray matches ..499 positioned ^ ^ ^0.25 if block ~ ~ ~ tnt run function gun:fire-tnt