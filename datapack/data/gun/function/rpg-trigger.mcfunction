scoreboard players add @a rpg_cooldown 0

execute as @a[scores={use_gun=1..,rpg_cooldown=1..}] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{rpg:1b}] run tellraw @s [{"text":"冷卻中：","color":"red"},{"score":{"name":"@s","objective":"rpg_cooldown"}},{"text":"/20 秒"}]

execute as @a[scores={use_gun=1..,rpg_cooldown=0}] at @s if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{rpg:1b}] run function gun:rpg-fire

execute as @a if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{rpg:1b}] run effect give @s minecraft:slowness 1 1 true

execute as @a if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{rpg:1b}] run attribute @s minecraft:jump_strength base set 0.25

scoreboard players remove @a[scores={rpg_cooldown=1..}] rpg_cooldown 1