# decrement length counter
scoreboard players remove #xze.lightning.len xze.num 150

# particle
$particle $(particle)

# move foward and loop
execute if score #xze.lightning.len xze.num matches 1.. positioned ^ ^ ^0.15 run return run function xze:internal/lightning/draw_main_segment/loop with storage xze:temp

# terminate loop and start new segment
execute run return run function xze:internal/lightning/make_bolt/main