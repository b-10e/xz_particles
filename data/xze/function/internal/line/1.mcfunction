$execute positioned ^ ^ ^0.0 run particle $(particle)
$execute positioned ^ ^ ^0.2 run particle $(particle)
$execute positioned ^ ^ ^0.4 run particle $(particle)
$execute positioned ^ ^ ^0.6 run particle $(particle)
$execute positioned ^ ^ ^0.8 run particle $(particle)

execute positioned ^ ^ ^1 if entity @s[distance=..0.125] run return 1
execute positioned ^ ^ ^1 if entity @s[distance=..0.25] run return run function xze:internal/line/0_125 with storage xze:temp
execute positioned ^ ^ ^1 if entity @s[distance=..0.5] run return run function xze:internal/line/0_25 with storage xze:temp
execute positioned ^ ^ ^1 if entity @s[distance=..1] run return run function xze:internal/line/0_5 with storage xze:temp
execute positioned ^ ^ ^1 run return run function xze:internal/line/1 with storage xze:temp