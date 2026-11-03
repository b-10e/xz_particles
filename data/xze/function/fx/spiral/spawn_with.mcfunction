# macro args:
# particle - the particle
# period - the period of the spiral
# radius - the radius of the spiral
# start_angle  - the angle of the start of the spiral perpendicular to the view direction
# clockwise - a boolean determining the direction the spiral shouls rotate. clockwise if true, counter-clockwise if false
$data modify storage xze:temp particle set value "$(particle)"
$data modify storage xze:temp period set value $(period)
$data modify storage xze:temp radius set value $(radius)
$data modify storage xze:temp start_angle set value $(start_angle)
$data modify storage xze:temp clockwise set value $(clockwise)

# set period to an integer: floor(period * 10)
execute store result score #xze.spiral.period_steps xze.int run compute default float xze:truncate_period
execute store result storage xze:temp period int 1 run scoreboard players get #xze.spiral.period_steps xze.int

# load spiral lut
function xze:internal/spiral/cache/load_lut with storage xze:temp
data modify storage xze:temp temp_lut set from storage xze:temp lut

# load radius and particle for quick access
$data modify storage xze:cache radius_and_particle set value {radius:$(radius),particle:"$(particle)"}

# reset iteration count
scoreboard players set #xze.spiral.iter_count xze.int 0

execute positioned ^ ^ ^ facing entity @s feet run function xze:internal/spiral/loop
