# decrement length counter
scoreboard players remove #xze.lightning.len xze.num 150

# particle
$particle $(particle)

# move forward and loop
execute if score #xze.lightning.len xze.num matches 1.. positioned ^ ^ ^0.15 run return run function xze:internal/lightning/draw_end_segment/loop with storage xze:temp