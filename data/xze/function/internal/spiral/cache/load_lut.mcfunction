data remove storage xze:temp lut
$data modify storage xze:temp lut set from storage xze:cache spirals[{period:$(period),start_angle:$(start_angle),clockwise:$(clockwise)}].lut

# load lut if cached spiral was found
execute if data storage xze:temp lut run return 1

# otherwise, generate and store spiral lut 
function xze:internal/spiral/cache/generate/main

# load newly generated lut
data modify storage xze:temp lut set from storage xze:temp spiral.lut
data remove storage xze:temp spiral