# macro args:
# particle - the particle
# period - the period of the spiral
# radius - the radius of the spiral
# angle  - the angle of the start of the spiral perpendicular to the view direction
$data modify storage xze:temp particle set value "$(particle)"
$data modify storage xze:temp period set value $(period)
$data modify storage xze:temp radius set value $(radius)
$data modify storage xze:temp starting_angle set value $(angle)

# reset iteration count
scoreboard players set #xze.spiral.iter_count xze.int 0

execute positioned ^ ^ ^0 facing entity @s feet run function xze:internal/spiral/loop
