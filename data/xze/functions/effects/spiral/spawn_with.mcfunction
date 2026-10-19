# macro args:
# particle - the particle
# period - the period of the spiral
# radius - the radius of the spiral
$data modify storage xze:temp particle set value "$(particle)"
$data modify storage xze:temp period set value $(period)
$data modify storage xze:temp radius set value $(radius)

execute store result score #xze.spiral.period xze.num run data get storage xze:temp period 1000
scoreboard players set #xze.spiral.iter_count xze.int 0

execute positioned ~ ~ ~ positioned ^ ^ ^0.1 facing entity @s feet run function xze:effects/spiral/loop
