# 标记玩家触及范围内的实体
execute as @a at @s as @e[distance=0.1..7,type=#sh:mobs,tag=!have_lifebar] at @s run tag @s add have_lifebar

# 更新已标记的实体血条
execute as @e[type=#sh:mobs,tag=have_lifebar] at @s run function sh:lifebar/update

# 移除玩家初级范围外的实体标签
execute as @a at @s as @e[distance=7..,type=#sh:mobs,tag=have_lifebar] at @s run tag @s remove have_lifebar
