# calculate index
execute store result score #xze.spiral.index xze.int run data get storage xze:temp percentage 16

# fx
$execute if score #xze.spiral.index xze.int matches 0 positioned ~ ~ ~ facing ^0 ^1 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 1 positioned ~ ~ ~ facing ^0.38268346 ^0.9238795 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 2 positioned ~ ~ ~ facing ^0.70710677 ^0.70710677 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 3 positioned ~ ~ ~ facing ^0.9238795 ^0.38268343 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 4 positioned ~ ~ ~ facing ^1 ^-0.00000004371139 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 5 positioned ~ ~ ~ facing ^0.9238795 ^-0.38268352 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 6 positioned ~ ~ ~ facing ^0.70710677 ^-0.70710677 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 7 positioned ~ ~ ~ facing ^0.38268328 ^-0.9238796 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 8 positioned ~ ~ ~ facing ^-0.00000008742278 ^-1 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 9 positioned ~ ~ ~ facing ^-0.38268343 ^-0.9238795 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 10 positioned ~ ~ ~ facing ^-0.7071069 ^-0.70710665 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 11 positioned ~ ~ ~ facing ^-0.9238797 ^-0.38268313 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 12 positioned ~ ~ ~ facing ^-1 ^0.000000011924881 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 13 positioned ~ ~ ~ facing ^-0.92387944 ^0.3826836 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 14 positioned ~ ~ ~ facing ^-0.70710653 ^0.707107 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 15 positioned ~ ~ ~ facing ^-0.38268343 ^0.92387956 ^ positioned ^ ^ ^$(radius) run particle $(particle)
