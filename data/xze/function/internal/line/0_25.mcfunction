$execute positioned ^ ^ ^0.0 run particle $(particle)
$execute positioned ^ ^ ^0.2 run particle $(particle)

execute positioned ^ ^ ^0.25 if entity @s[distance=..0.125] run return 1
execute positioned ^ ^ ^0.25 if entity @s[distance=..0.25] run return run function xze:internal/line/0_125 with storage xze:temp
execute positioned ^ ^ ^0.25 run return run function xze:internal/line/0_25 with storage xze:temp