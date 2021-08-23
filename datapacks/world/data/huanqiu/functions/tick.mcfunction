kill @e[type=minecraft:tnt]
execute as @a at @s if block ~ ~-1 ~ minecraft:gold_block run spawnpoint @s ~ ~ ~
execute as @a at @s if block ~ ~-1 ~ minecraft:gold_block run title @a actionbar {"text":"重生点已设置","color":"green"}
execute as @a at @s if block ~ ~-1 ~ minecraft:obsidian run kill @s
execute as @a at @s if block ~ ~-1 ~ minecraft:waxed_copper_block run effect give @s minecraft:night_vision 2 0
execute as @a at @s if block ~ ~-1 ~ minecraft:waxed_copper_block run effect give @s minecraft:blindness 2 0