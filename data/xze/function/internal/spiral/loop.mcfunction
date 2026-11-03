# draw particle
$execute facing $(dir) positioned ^ ^ ^$(radius) run particle $(particle)

# shift temp_lut
data remove storage xze:temp temp_lut[-1]
execute unless data storage xze:temp temp_lut[0] \
    run data modify storage xze:temp temp_lut set from storage xze:temp lut

# move forward and loop again
execute \
    positioned ^ ^ ^0.1 \
    unless entity @s[distance=..0.1] \
        run function xze:internal/spiral/loop with storage xze:temp temp_lut[-1]