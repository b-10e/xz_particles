# if target nearby, draw final segment to it and terminate
execute if entity @s[distance=..1] run return run function xze:internal/lightning/make_bolt/finish

# roll to see if a branch should be made
execute if predicate {type:"minecraft:random_chance",chance:0.33} run function xze:internal/lightning/make_bolt/make_branch

# generate new random length, pitch, and yaw to not match branch
function xze:internal/lightning/generate_pitch_yaw_len

# draw particle line and move to to new location
$execute facing entity @s feet rotated ~$(yaw) ~$(pitch) run function xze:internal/lightning/draw_main_segment/loop with storage xze:temp
