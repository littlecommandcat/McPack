scoreboard players add @a normal_gun_cooldown 0
scoreboard players add @a sniper_gun_cooldown 0

execute as @a[scores={use_gun=1..,normal_gun_cooldown=0}] at @s if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{normal-gun:1b}] run function gun:normal-fire
execute as @a[scores={use_gun=1..,sniper_gun_cooldown=0}] at @s if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{sniper-gun:1b}] run function gun:sniper-fire

execute as @a if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{sniper-gun:1b}] run effect give @s minecraft:slowness 1 0 true
execute as @a if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{sniper-gun:1b}] run attribute @s minecraft:jump_strength base set 0
execute as @a unless items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{sniper-gun:1b}] run attribute @s minecraft:jump_strength base reset
# execute as @a if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{sniper-gun:1b}] run attribute @s minecraft:jump_strength base reset
# execute as @a if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{sniper-gun:1b}] run effect give @s minecraft:jump_boost 1 255 true

scoreboard players set @a[scores={use_gun=1..}] use_gun 0
scoreboard players remove @a[scores={normal_gun_cooldown=1..}] normal_gun_cooldown 1
scoreboard players remove @a[scores={sniper_gun_cooldown=1..}] sniper_gun_cooldown 1