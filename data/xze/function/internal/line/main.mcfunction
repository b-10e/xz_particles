execute if entity @s[distance=..0.125] run return 1
execute if entity @s[distance=..0.25] run return run function xze:internal/line/0_125 with storage xze:temp
execute if entity @s[distance=..0.5] run return run function xze:internal/line/0_25 with storage xze:temp
execute if entity @s[distance=..1] run return run function xze:internal/line/0_5 with storage xze:temp
execute if entity @s[distance=..2] run return run function xze:internal/line/1 with storage xze:temp
execute if entity @s[distance=..4] run return run function xze:internal/line/2 with storage xze:temp
execute if entity @s[distance=..8] run return run function xze:internal/line/4 with storage xze:temp
execute if entity @s[distance=..16] run return run function xze:internal/line/8 with storage xze:temp
execute if entity @s[distance=..32] run return run function xze:internal/line/16 with storage xze:temp
execute if entity @s[distance=..64] run return run function xze:internal/line/32 with storage xze:temp
execute if entity @s[distance=..128] run return run function xze:internal/line/64 with storage xze:temp
execute if entity @s[distance=..256] run return run function xze:internal/line/128 with storage xze:temp
execute if entity @s[distance=..512] run return run function xze:internal/line/256 with storage xze:temp
return run function xze:internal/line/512 with storage xze:temp