# sound
execute at @s run playsound block.respawn_anchor.deplete
execute at @s run playsound entity.lightning_bolt.thunder

execute at @s anchored eyes positioned ^ ^-0.5 ^20 run function xze:marker/spawn

# laser
execute at @s anchored eyes positioned ^ ^-0.5 ^0.1 as 91b50803-54c7-44b9-8a3d-6384cfa2939d run function xze:fx/line/spawn_with {particle:"minecraft:end_rod"}
execute at @s anchored eyes positioned ^ ^-0.5 ^0.1 as 91b50803-54c7-44b9-8a3d-6384cfa2939d run function xze:fx/spiral/spawn_with {particle:"minecraft:end_rod",radius:1,period:3,angle:0}

# lightning
execute at @s anchored eyes positioned ^ ^-0.5 ^0.1 as 91b50803-54c7-44b9-8a3d-6384cfa2939d run function xze:fx/lightning/spawn_with {particle:"minecraft:end_rod"}
execute at @s anchored eyes positioned ^ ^-0.5 ^0.1 as 91b50803-54c7-44b9-8a3d-6384cfa2939d run function xze:fx/lightning/spawn_with {particle:"minecraft:end_rod"}

# circles
execute at @s anchored eyes positioned ^ ^-0.5 ^6 run function xze:fx/circle/spawn_with {particle:"minecraft:end_rod",radius:10}
execute at @s anchored eyes positioned ^ ^-0.5 ^8 run function xze:fx/circle/spawn_with {particle:"minecraft:end_rod",radius:8}
execute at @s anchored eyes positioned ^ ^-0.5 ^10 run function xze:fx/circle/spawn_with {particle:"minecraft:end_rod",radius:6}
execute at @s anchored eyes positioned ^ ^-0.5 ^12 run function xze:fx/circle/spawn_with {particle:"minecraft:end_rod",radius:4}
execute at @s anchored eyes positioned ^ ^-0.5 ^14 run function xze:fx/circle/spawn_with {particle:"minecraft:end_rod",radius:2}

function xze:marker/delete