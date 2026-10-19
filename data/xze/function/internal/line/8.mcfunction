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
$execute positioned ^ ^ ^4.0 run particle $(particle)
$execute positioned ^ ^ ^4.2 run particle $(particle)
$execute positioned ^ ^ ^4.4 run particle $(particle)
$execute positioned ^ ^ ^4.6 run particle $(particle)
$execute positioned ^ ^ ^4.8 run particle $(particle)
$execute positioned ^ ^ ^5.0 run particle $(particle)
$execute positioned ^ ^ ^5.2 run particle $(particle)
$execute positioned ^ ^ ^5.4 run particle $(particle)
$execute positioned ^ ^ ^5.6 run particle $(particle)
$execute positioned ^ ^ ^5.8 run particle $(particle)
$execute positioned ^ ^ ^6.0 run particle $(particle)
$execute positioned ^ ^ ^6.2 run particle $(particle)
$execute positioned ^ ^ ^6.4 run particle $(particle)
$execute positioned ^ ^ ^6.6 run particle $(particle)
$execute positioned ^ ^ ^6.8 run particle $(particle)
$execute positioned ^ ^ ^7.0 run particle $(particle)
$execute positioned ^ ^ ^7.2 run particle $(particle)
$execute positioned ^ ^ ^7.4 run particle $(particle)
$execute positioned ^ ^ ^7.6 run particle $(particle)
$execute positioned ^ ^ ^7.8 run particle $(particle)

execute positioned ^ ^ ^8 if entity @s[distance=..0.125] run return 1
execute positioned ^ ^ ^8 if entity @s[distance=..0.25] run return run function xze:internal/line/0_125 with storage xze:temp
execute positioned ^ ^ ^8 if entity @s[distance=..0.5] run return run function xze:internal/line/0_25 with storage xze:temp
execute positioned ^ ^ ^8 if entity @s[distance=..1] run return run function xze:internal/line/0_5 with storage xze:temp
execute positioned ^ ^ ^8 if entity @s[distance=..2] run return run function xze:internal/line/1 with storage xze:temp
execute positioned ^ ^ ^8 if entity @s[distance=..4] run return run function xze:internal/line/2 with storage xze:temp
execute positioned ^ ^ ^8 if entity @s[distance=..8] run return run function xze:internal/line/4 with storage xze:temp
execute positioned ^ ^ ^8 run return run function xze:internal/line/8 with storage xze:temp