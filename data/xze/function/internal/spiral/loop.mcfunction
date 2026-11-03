# terminate if entity reached
execute if entity @s[distance=..0.1] run return 1

# reload temp_lut if end of period has been reached
execute if score #xze.spiral.iter_count xze.int >= #xze.spiral.period_steps xze.int \
    run data modify storage xze:temp temp_lut set from storage xze:temp lut
execute if score #xze.spiral.iter_count xze.int >= #xze.spiral.period_steps xze.int \
    run scoreboard players set #xze.spiral.iter_count xze.int 0

# load face direction
data modify storage xze:temp dir set from storage xze:temp temp_lut[0]
data remove storage xze:temp temp_lut[0]

# draw particle
function xze:internal/spiral/particle with storage xze:temp

# move forward and loop again
scoreboard players add #xze.spiral.iter_count xze.int 1
execute positioned ^ ^ ^0.1 run function xze:internal/spiral/loop