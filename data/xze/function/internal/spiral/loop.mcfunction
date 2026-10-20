# terminate if entity reached
execute if entity @s[distance=..0.1] run return 1

# increment angle
data modify storage xze:temp angle set compute default float xze:calc_angle

# draw particle
data modify storage xze:temp sin set compute default float xze:sin
data modify storage xze:temp cos set compute default float xze:cos
function xze:internal/spiral/particle with storage xze:temp

# move forward and loop again
scoreboard players add #xze.spiral.iter_count xze.int 1
execute positioned ^ ^ ^0.1 run function xze:internal/spiral/loop