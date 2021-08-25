kill @e[type=minecraft:tnt]

#金块（设置重生点）
execute as @a at @s if block ~ ~-1 ~ minecraft:gold_block run spawnpoint @s ~ ~ ~
execute as @a at @s if block ~ ~-1 ~ minecraft:gold_block run title @a actionbar {"text":"重生点已设置","color":"green"}

#黑曜石（死亡）
execute as @a at @s if block ~ ~-1 ~ minecraft:obsidian run kill @s

#涂蜡铜块（完全失明+视角旋转+跳跃提升）
execute as @a at @s if block ~ ~-1 ~ minecraft:waxed_copper_block run effect give @s minecraft:night_vision 2 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:waxed_copper_block run effect give @s minecraft:blindness 2 0 true
execute as @a at @s rotated as @s if block ~ ~-1 ~ minecraft:waxed_copper_block run tp @s ~ ~ ~ ~5 ~
execute as @a at @s if block ~ ~-1 ~ minecraft:waxed_copper_block run effect give @s minecraft:jump_boost 2 3 true

#模式切换
scoreboard players enable @a[tag=admin] adventure
scoreboard players enable @a[tag=admin] spectator
scoreboard players enable @a[tag=admin] survival
scoreboard players enable @a[tag=admin] creative
execute as @a[tag=admin] if score @s adventure = 1 numbers run gamemode adventure @s
execute as @a[tag=admin] if score @s creative = 1 numbers run gamemode creative @s
execute as @a[tag=admin] if score @s spectator = 1 numbers run gamemode spectator @s
execute as @a[tag=admin] if score @s survival = 1 numbers run gamemode survival @s
execute as @a if score @s adventure = 1 numbers run scoreboard players set @s adventure 0
execute as @a if score @s creative = 1 numbers run scoreboard players set @s creative 0
execute as @a if score @s spectator = 1 numbers run scoreboard players set @s spectator 0
execute as @a if score @s survival = 1 numbers run scoreboard players set @s survival 0
