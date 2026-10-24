scoreboard players add @a normal_gun_cooldown 0
scoreboard players add @a sniper_gun_cooldown 0
scoreboard players add @a rpg_cooldown 0

execute as @a unless items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{"rpg":1b}] unless items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{"sniper-gun":1b}] run attribute @s minecraft:jump_strength base reset

function gun:normal-trigger
function gun:sniper-trigger
function gun:rpg-trigger

scoreboard players set @a[scores={use_gun=1..}] use_gun 0
scoreboard players remove @a[scores={normal_gun_cooldown=1..}] normal_gun_cooldown 1
scoreboard players remove @a[scores={sniper_gun_cooldown=1..}] sniper_gun_cooldown 1
scoreboard players remove @a[scores={rpg_cooldown=1..}] rpg_cooldown 1