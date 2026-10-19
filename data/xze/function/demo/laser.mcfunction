# sound
execute at @s run playsound block.respawn_anchor.deplete
execute at @s run playsound entity.lightning_bolt.thunder

execute at @s anchored eyes positioned ^ ^-0.5 ^20 run summon marker ~ ~ ~ {Tags:["xze.laser"]}

# laser
execute at @s anchored eyes positioned ^ ^-0.5 ^0.1 as @n[type=marker,tag=xze.laser] run function xze:effects/line/spawn_with {particle:"minecraft:end_rod"}
execute at @s anchored eyes positioned ^ ^-0.5 ^0.1 as @n[type=marker,tag=xze.laser] run function xze:effects/spiral/spawn_with {particle:"minecraft:end_rod",radius:1,period:3}

# lightning
execute at @s anchored eyes positioned ^ ^-0.5 ^0.1 as @n[type=marker,tag=xze.laser] run function xze:effects/lightning/spawn
execute at @s anchored eyes positioned ^ ^-0.5 ^0.1 as @n[type=marker,tag=xze.laser] run function xze:effects/lightning/spawn

# circles
execute at @s anchored eyes positioned ^ ^-0.5 ^6 run function xze:effects/circle/spawn_with {particle:"minecraft:end_rod",radius:10}
execute at @s anchored eyes positioned ^ ^-0.5 ^8 run function xze:effects/circle/spawn_with {particle:"minecraft:end_rod",radius:8}
execute at @s anchored eyes positioned ^ ^-0.5 ^10 run function xze:effects/circle/spawn_with {particle:"minecraft:end_rod",radius:6}
execute at @s anchored eyes positioned ^ ^-0.5 ^12 run function xze:effects/circle/spawn_with {particle:"minecraft:end_rod",radius:4}
execute at @s anchored eyes positioned ^ ^-0.5 ^14 run function xze:effects/circle/spawn_with {particle:"minecraft:end_rod",radius:2}

kill @n[type=marker,tag=xze.laser]