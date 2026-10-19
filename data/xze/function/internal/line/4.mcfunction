$execute positioned ^ ^ ^0.0 run particle $(particle)
$execute positioned ^ ^ ^0.2 run particle $(particle)
$execute positioned ^ ^ ^0.4 run particle $(particle)
$execute positioned ^ ^ ^0.6 run particle $(particle)
$execute positioned ^ ^ ^0.8 run particle $(particle)
$execute positioned ^ ^ ^1.0 run particle $(particle)
$execute positioned ^ ^ ^1.2 run particle $(particle)
$execute positioned ^ ^ ^1.4 run particle $(particle)
$execute positioned ^ ^ ^1.6 run particle $(particle)
$execute positioned ^ ^ ^1.8 run particle $(particle)
$execute positioned ^ ^ ^2.0 run particle $(particle)
$execute positioned ^ ^ ^2.2 run particle $(particle)
$execute positioned ^ ^ ^2.4 run particle $(particle)
$execute positioned ^ ^ ^2.6 run particle $(particle)
$execute positioned ^ ^ ^2.8 run particle $(particle)
$execute positioned ^ ^ ^3.0 run particle $(particle)
$execute positioned ^ ^ ^3.2 run particle $(particle)
$execute positioned ^ ^ ^3.4 run particle $(particle)
$execute positioned ^ ^ ^3.6 run particle $(particle)
$execute positioned ^ ^ ^3.8 run particle $(particle)

execute positioned ^ ^ ^4 if entity @s[distance=..0.125] run return 1
execute positioned ^ ^ ^4 if entity @s[distance=..0.25] run return run function xze:internal/line/0_125 with storage xze:temp
execute positioned ^ ^ ^4 if entity @s[distance=..0.5] run return run function xze:internal/line/0_25 with storage xze:temp
execute positioned ^ ^ ^4 if entity @s[distance=..1] run return run function xze:internal/line/0_5 with storage xze:temp
execute positioned ^ ^ ^4 if entity @s[distance=..2] run return run function xze:internal/line/1 with storage xze:temp
execute positioned ^ ^ ^4 if entity @s[distance=..4] run return run function xze:internal/line/2 with storage xze:temp
execute positioned ^ ^ ^4 run return run function xze:internal/line/4 with storage xze:temp