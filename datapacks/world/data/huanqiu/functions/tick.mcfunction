kill @e[type=minecraft:tnt]

#金块（设置重生点）
execute as @a at @s if block ~ ~-1 ~ minecraft:gold_block run spawnpoint @s ~ ~ ~
execute as @a at @s if block ~ ~-1 ~ minecraft:gold_block run title @a actionbar {"text":"重生点已设置","color":"green"}

#黑曜石（死亡）
execute as @a at @s if block ~ ~-1 ~ minecraft:obsidian run kill @s

#涂蜡铜块（完全失明+视角旋转）
execute as @a at @s if block ~ ~-1 ~ minecraft:waxed_copper_block run effect give @s minecraft:night_vision 2 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:waxed_copper_block run effect give @s minecraft:blindness 2 0 true
execute as @a at @s rotated as @s if block ~ ~-1 ~ minecraft:waxed_copper_block run tp @s ~ ~ ~ ~5 ~