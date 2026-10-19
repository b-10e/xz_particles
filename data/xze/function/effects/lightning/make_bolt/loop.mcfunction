# if target nearby, draw final segment to it and terminate
execute if entity @s[distance=..1] run return run function xze:effects/lightning/make_bolt/finish

# roll to see if a branch should be made
execute if predicate xze:lightning_branch_chance run function xze:effects/lightning/make_bolt/make_branch

# generate new random length, pitch, and yaw to not match branch
function xze:effects/lightning/generate_pitch_yaw_len

# draw particle line and move to to new location
$execute facing entity @s feet rotated ~$(yaw) ~$(pitch) run function xze:effects/lightning/draw_main_segment/main
