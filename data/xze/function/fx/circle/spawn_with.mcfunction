# store args
$data modify storage xze:temp particle set value "$(particle)"
$data modify storage xze:temp radius set value $(radius)

# choose amount of particles based on the radius
execute store result score #xze.circle.radius xze.num run data get storage xze:temp radius 1000

execute if score #xze.circle.radius xze.num matches 8000.. positioned ^ ^ ^ run return run function xze:internal/circle/256 with storage xze:temp
execute if score #xze.circle.radius xze.num matches 4000..7999 positioned ^ ^ ^ run return run function xze:internal/circle/128 with storage xze:temp
execute if score #xze.circle.radius xze.num matches 2000..3999 positioned ^ ^ ^ run return run function xze:internal/circle/64 with storage xze:temp
execute if score #xze.circle.radius xze.num matches 1000..1999 positioned ^ ^ ^ run return run function xze:internal/circle/32 with storage xze:temp
execute if score #xze.circle.radius xze.num matches 500..999 positioned ^ ^ ^ run return run function xze:internal/circle/16 with storage xze:temp
execute if score #xze.circle.radius xze.num matches 0..499 positioned ^ ^ ^ run return run function xze:internal/circle/8 with storage xze:temp


