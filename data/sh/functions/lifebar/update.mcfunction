# 获取最大生命值以及当前生命值
execute store result score @s shHealthMax run attribute @s minecraft:generic.max_health get
execute store result score @s shHealthCurrent run data get entity @s Health 100

# 计算得出血条分数
scoreboard players operation @s temp = @s shHealthCurrent
scoreboard players operation @s temp /= @s shHealthMax

# 根据血条分数设置血条
execute positioned ^ ^ ^ anchored eyes positioned ^ ^0.1 ^ run function sh:lifebar/set


