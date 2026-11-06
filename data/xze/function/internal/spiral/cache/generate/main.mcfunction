# create empty lut
data modify storage xze:temp spiral set value {lut:[]}
data modify storage xze:temp spiral.clockwise set from storage xze:temp clockwise
data modify storage xze:temp spiral.start_angle set from storage xze:temp start_angle
data modify storage xze:temp spiral.period set from storage xze:temp period

# set iter count
scoreboard players set #xze.spiral.iter_count xze.int 0

# clockwise modifier
scoreboard players set #xze.spiral.angle_multiplier xze.int 1
execute if data storage xze:temp {clockwise:0} run scoreboard players set #xze.spiral.angle_multiplier xze.int -1

# populate lut
function xze:internal/spiral/cache/generate/loop

# push lut to cache
data modify storage xze:cache spirals prepend from storage xze:temp spiral
data remove storage xze:cache spirals[8]

