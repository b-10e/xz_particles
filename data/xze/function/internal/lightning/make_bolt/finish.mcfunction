# set final parameters
scoreboard players set #xze.lightning.len xze.num 1000
execute store result storage xze:temp len double 0.001 run scoreboard players get #xze.lightning.len xze.num
data modify storage xze:temp pitch set value 0
data modify storage xze:temp yaw set value 0

# draw final segment towards target
execute facing entity @s eyes run function xze:internal/lightning/draw_end_segment/main with storage xze:temp
