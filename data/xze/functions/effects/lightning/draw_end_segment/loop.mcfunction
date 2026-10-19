# decrement loop counter
scoreboard players remove #xze.lightning.len xze.num 1

# particle
particle minecraft:electric_spark

# loop again 1/10th of a block foward
execute if score #xze.lightning.len xze.num matches 1.. positioned ^ ^ ^0.1 run return run function xze:effects/lightning/draw_end_segment/loop