## A Collection of Novel Visual Effects

xokz's Particle Effects provides several unique effects for datapackers and mapmakers.

This datapack is purely a library, and contains no ticking function. It exists only to be called by other datapacks, and/or to be modified.

### Effect Catalog

<details>
<summary>Lightning</summary>
  
----
  
### Functions:
`xze:fx/lightning/spawn_with {...}` | Spawns a lightning-shaped bolt of particles
- `particle`: `String` | Particle the lightning is drawn with
- Must be run **at** the starting point, and **as** the entity to move towards
  - To target a location instead, spawn a marker there and run as that
  
----
  
### Examples:
`execute positioned ~ ~1 ~ as @p run function xze:fx/lightning/spawn_with {particle:"minecraft:electric_spark"}`
- Put this in a repeating command block and see what happens

----

### Notes:
- To change the lightning segment length and angles, you can change the ranges in the `generate_pitch_yaw_len.mcfunction` function
- To change the chance of a branch being made, change the value in the `lightning_branch_chance.json` predicate

----

### TPS Impact: Low

----

</details>

<details>
<summary>Spiral</summary>

----

### Functions:
`xze:fx/spiral/spawn_with {...}` | Draws a columnal spiral between the origin point and target entity
- `particle`: `String` | Particle the spiral is drawn with
- `radius`: `Number` | Radius of the spiral, in blocks
- `period`: `Number` | Distance required for the spiral to complete a full rotation, in blocks
- `angle`: `Number` | The *starting* rotation angle of the spiral, in radians. If you aren't sure, use 0
- Must be run **at** the origin point, and **as** the entity to move towards
  - To target a location instead, spawn a marker there and run as that

----

### Examples:
`execute positioned ~ ~ ~ as @p run function xze:fx/spawn_with {particle:"minecraft:electric_spark",radius:1,period:2,angle:0}`
- Put this in a command block, move away, and activate it

----

### Notes:
- Increase the gamerule `max_command_sequence_length` to a larger number like 1000000, otherwise your spiral may get cut off

----

### TPS Impact: Medium
- Depends how long the spiral is and how frequently it is being spawned

----

</details>

<details>
<summary>Circle</summary>

----

### Functions:
`function xze:fx/circle/spawn_with {particle:"<particle>",radius:<num>}` 
- Spawns a circle of the provided particle and radius perpendicular to the execution look direction

----

### Examples:
`execute anchored eyes positioned ^ ^ ^5 run function xze:fx/circle/spawn_with {particle:"minecraft:end_rod",radius:2.5}`

----

### TPS Impact: None

----

</details>

<details>
<summary>Block Edge Outline</summary>

----

### Functions:
`function xze:fx/block_outline/spawn_with {particle:"<particle>"}` 
- Spawns the block edge outline effect using the provided particle

----

### Examples:
`function xze:fx/block_outline/spawn_with {particle:"minecraft:end_rod"}` 

----

### Notes:
- Automatically snaps to the block grid

----

### TPS Impact: None

----

</details>

<details>
<summary>Block Verticies</summary>

### Functions:
`function xze:fx/block_outline/spawn_with {particle:"<particle>"}` 
- Spawns the provided particle at the 8 corners of the block

### Examples:
`function xze:fx/block_outline/spawn_with {particle:"minecraft:flame"}`

### Notes:
- Automatically snaps to the block grid

----

### TPS Impact: None

----

</details>

<details>
<summary>Line</summary>

----

### Functions:
`xze:fx/line/spawn_with {particle:"<particle>"}`
- Must be run **at** the origin point, and **as** the entity to move towards
  - To target a location instead, spawn a marker there and run as that
- Spawns a line of particles between the origin point and target entity

----
  
### Examples:
`execute positioned ^ ^ ^10 as @p run function xze:fx/line/spawn_with {particle:"minecraft:end_rod"}`

----

### TPS Impact: Very Low

----

</details>

Run `/function xze:demo/laser` or `/function xze:demo/ball` for a demo!
