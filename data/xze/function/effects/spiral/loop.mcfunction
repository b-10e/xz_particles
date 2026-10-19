# calculate period percentage 
# remainder = iter_count % period
# percentage = remainder / period
# percentage will be a number between 0 and 1
scoreboard players operation #xze.spiral.remainder xze.int = #xze.spiral.iter_count xze.int
scoreboard players operation #xze.spiral.remainder xze.int %= #xze.spiral.period xze.num
scoreboard players operation #xze.spiral.remainder xze.int *= #100 xze.const
scoreboard players operation #xze.spiral.remainder xze.int *= #1000 xze.const
scoreboard players operation #xze.spiral.percentage xze.num = #xze.spiral.remainder xze.int
scoreboard players operation #xze.spiral.percentage xze.num /= #xze.spiral.period xze.num
scoreboard players operation #xze.spiral.percentage xze.num %= #1000 xze.const
execute store result storage xze:temp percentage double 0.001 run scoreboard players get #xze.spiral.percentage xze.num

# deside particle density based on radius
execute store result score #xze.circle.radius xze.num run data get storage xze:temp radius 1000

# draw particle
execute if score #xze.circle.radius xze.num matches 8000.. run function xze:effects/spiral/256 with storage xze:temp
execute if score #xze.circle.radius xze.num matches 4000..7999 run function xze:effects/spiral/128 with storage xze:temp
execute if score #xze.circle.radius xze.num matches 2000..3999 run function xze:effects/spiral/64 with storage xze:temp
execute if score #xze.circle.radius xze.num matches 1000..1999 run function xze:effects/spiral/32 with storage xze:temp
execute if score #xze.circle.radius xze.num matches 0..999 run function xze:effects/spiral/16 with storage xze:temp

# move forwards and go again
scoreboard players add #xze.spiral.iter_count xze.int 1
execute unless entity @s[distance=..0.1] positioned ~ ~ ~ facing entity @s feet positioned ^ ^ ^0.1 run return run function xze:effects/spiral/loop
#tellraw @a {score:{name:"#xze.spiral.iter_count",objective:"xze.int"}}

