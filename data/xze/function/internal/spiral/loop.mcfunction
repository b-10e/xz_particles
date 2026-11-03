# reload temp_lut if end of period has been reached
execute unless data storage xze:temp temp_lut[0] \
    run data modify storage xze:temp temp_lut set from storage xze:temp lut

# load face direction
data modify storage xze:temp temp_lut[-1] merge from storage xze:cache radius_and_particle

# draw particle
function xze:internal/spiral/particle with storage xze:temp temp_lut[-1]

# move forward and loop again
data remove storage xze:temp temp_lut[-1]
execute \
    positioned ^ ^ ^0.1 \
    unless entity @s[distance=..0.1] \
        run function xze:internal/spiral/loop