# calculate index
execute store result score #xze.spiral.index xze.int run data get storage xze:temp percentage 8

# fx
$execute if score #xze.spiral.index xze.int matches 0 positioned ~ ~ ~ facing ^0 ^1 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 1 positioned ~ ~ ~ facing ^0.70710677 ^0.70710677 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 2 positioned ~ ~ ~ facing ^1 ^-0.00000004371139 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 3 positioned ~ ~ ~ facing ^0.70710677 ^-0.70710677 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 4 positioned ~ ~ ~ facing ^-0.00000008742278 ^-1 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 5 positioned ~ ~ ~ facing ^-0.7071069 ^-0.70710665 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 6 positioned ~ ~ ~ facing ^-1 ^0.000000011924881 ^ positioned ^ ^ ^$(radius) run particle $(particle)
$execute if score #xze.spiral.index xze.int matches 7 positioned ~ ~ ~ facing ^-0.70710653 ^0.707107 ^ positioned ^ ^ ^$(radius) run particle $(particle)