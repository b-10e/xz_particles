# generate random length, pitch, and yaw
# length is divided by 10 in storage, so a score of 17 would be 1.7 blocks
execute store result score #xze.lightning.len xze.num run random value 10..20
execute store result storage xze:temp rand.len double 0.1 run scoreboard players get #xze.lightning.len xze.num
execute store result storage xze:temp rand.yaw int 1 run random value -40..40
execute store result storage xze:temp rand.pitch int 1 run random value -20..10