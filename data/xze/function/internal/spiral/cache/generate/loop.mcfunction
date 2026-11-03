# calc angle
data modify storage xze:temp angle set compute default float xze:calc_angle
data modify storage xze:temp sin set compute default float xze:sin
data modify storage xze:temp cos set compute default float xze:cos

# push value to lut
function xze:internal/spiral/cache/generate/append_string with storage xze:temp

#loop until a full period cycle has been generated
scoreboard players add #xze.spiral.iter_count xze.int 1
execute if score #xze.spiral.iter_count xze.int < #xze.spiral.period_steps xze.int \
    run function xze:internal/spiral/cache/generate/loop