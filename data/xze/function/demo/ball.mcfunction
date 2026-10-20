# expanding sphere
execute at @s anchored eyes positioned ^ ^ ^10 run function xze:fx/sphere/spawn_with {particle:"end_rod ~ ~ ~ ^ ^ ^100000000 0.000000002 0 force",radius:4}

# position marker for double helix
execute at @s anchored eyes positioned ^ ^ ^10 positioned ~ ~16 ~ run function xze:marker/spawn

# fire helix
execute at @s anchored eyes positioned ^ ^ ^10 as 91b50803-54c7-44b9-8a3d-6384cfa2939d run function xze:fx/spiral/spawn_with {particle:"minecraft:flame",radius:1,period:2,angle:0}
execute at @s anchored eyes positioned ^ ^ ^10 as 91b50803-54c7-44b9-8a3d-6384cfa2939d run function xze:fx/spiral/spawn_with {particle:"minecraft:soul_fire_flame",radius:1,period:2,angle:3.1415926535}

# delete marker
function xze:marker/delete
