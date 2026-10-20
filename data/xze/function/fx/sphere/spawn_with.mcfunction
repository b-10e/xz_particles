# store args
$data modify storage xze:temp radius set value $(radius)
$data modify storage xze:temp particle set value "$(particle)"

# choose amount of particles based on the radius
execute store result score #xze.sphere.radius xze.num run data get storage xze:temp radius 1000

execute if score #xze.sphere.radius xze.num matches 16000.. positioned ^ ^ ^ run return run function xze:internal/sphere/2048 with storage xze:temp
execute if score #xze.sphere.radius xze.num matches 8000..15999 positioned ^ ^ ^ run return run function xze:internal/sphere/1024 with storage xze:temp
execute if score #xze.sphere.radius xze.num matches 4000..7999 positioned ^ ^ ^ run return run function xze:internal/sphere/512 with storage xze:temp
execute if score #xze.sphere.radius xze.num matches 2000..3999 positioned ^ ^ ^ run return run function xze:internal/sphere/256 with storage xze:temp
execute if score #xze.sphere.radius xze.num matches 1000..1999 positioned ^ ^ ^ run return run function xze:internal/sphere/128 with storage xze:temp
execute if score #xze.sphere.radius xze.num matches 500..999 positioned ^ ^ ^ run return run function xze:internal/circle/64 with storage xze:temp
execute if score #xze.sphere.radius xze.num matches 0..499 positioned ^ ^ ^ run return run function xze:internal/circle/32 with storage xze:temp