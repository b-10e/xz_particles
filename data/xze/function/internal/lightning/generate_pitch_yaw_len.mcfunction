# generate random length, pitch, and yaw
# length is divided by 1000 in storage, so a score of 1700 would be 1.7 blocks
execute store result score #xze.lightning.len xze.num run random value 1000..2000
execute store result storage xze:temp len double 0.001 run scoreboard players get #xze.lightning.len xze.num
execute store result storage xze:temp yaw int 1 run random value -40..40
execute store result storage xze:temp pitch int 1 run random value -20..10