# set final parameters
scoreboard players set #xze.lightning.len xze.num 10
execute store result storage xze:temp rand.len double 0.1 run scoreboard players get #xze.lightning.len xze.num
data modify storage xze:temp rand.pitch set value 0
data modify storage xze:temp rand.yaw set value 0

# draw final segment towards target
execute facing entity @s eyes run function xze:effects/lightning/draw_end_segment/main with storage xze:temp rand
