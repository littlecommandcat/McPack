execute at @s run summon minecraft:creeper ~ ~ ~ {CustomName:'手榴彈',ignited:1b,explosion_radius:7b,fuse:20s,NoAI:1b,Silent:1b,attributes:[{id:"minecraft:max_health",base:100.0}],Health:100.0f,effects:[{id:"minecraft:invisibility",amplifier:0b,duration:30,show_particles:0b}]}
execute at @s run kill @s
# say test2