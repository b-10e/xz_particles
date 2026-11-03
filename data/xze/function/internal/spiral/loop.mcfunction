# reload temp_lut if end of period has been reached
execute if score #xze.spiral.iter_count xze.int >= #xze.spiral.period_steps xze.int \
    run function xze:internal/spiral/end_of_period

# load face direction
data modify storage xze:temp temp_lut[-1] merge from storage xze:cache radius_and_particle

# draw particle
function xze:internal/spiral/particle with storage xze:temp temp_lut[-1]

# move forward and loop again
scoreboard players add #xze.spiral.iter_count xze.int 1
data remove storage xze:temp temp_lut[-1]
execute \
    positioned ^ ^ ^0.1 \
    unless entity @s[distance=..0.1] \
        run function xze:internal/spiral/loop