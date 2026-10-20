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
`execute positioned ~ ~1 ~ as @p run function xze:fx/spiral/spawn_with {particle:"minecraft:electric_spark",radius:0.8,period:2,angle:0}`
- Put this in a repeating command block

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
`function xze:fx/circle/spawn_with {...}` | Draws a circle perpendicular to the context direction
- `particle`: `String` | Particle the circle is drawn with
- `radius`: `Number` | Radius of the circle, in blocks

----

### Examples:
`/execute anchored eyes positioned ^ ^ ^5 run function xze:fx/circle/spawn_with {particle:"minecraft:end_rod",radius:2.5}`

----

### TPS Impact: None

----

</details>

<details>
<summary>Sphere</summary>

----

### Functions:
`xze:fx/sphere/spawn_with {...}` | Draws a sphere 
- `particle`: `String` | Particle the sphere is drawn with
- `radius`: `Number` | Radius of the sphere, in blocks

----
  
### Examples:
`/execute anchored eyes positioned ^ ^ ^8 run function xze:fx/sphere/spawn_with {particle:"minecraft:end_rod",radius:4}`

----

### TPS Impact: Very Low
- Very large spheres (radius >=16) may have a multi ms impact, as they run many particle commands

----

</details>

<details>
<summary>Line</summary>

----

### Functions:
`xze:fx/line/spawn_with {...}` | Draws a line between the context position and the context entity
- `particle`: `String` | Particle the line is drawn with
- Must be run **at** the origin point, and **as** the entity to move towards
  - To target a location instead, spawn a marker there and run as that

----
  
### Examples:
`execute positioned ~ ~1 ~ as @p run function xze:fx/line/spawn_with {particle:"minecraft:electric_spark"}`
- Put this in a repeating command block

----

### TPS Impact: Very Low

----

</details>

<details>
<summary>Moving Block Edge Outline</summary>

----

### Functions:
`function xze:fx/block_edges_moving/spawn_with {...}` | Spawns particles that briefly move along the edge of a block
- `particle`: `String` | Particles that are spawned

----

### Examples:
`/execute anchored eyes positioned ^ ^ ^4 run function xze:fx/block_edges_moving/spawn_with {particle:"minecraft:end_rod"}` 

----

### Notes:
- Automatically snaps to the block grid, no need to manually align

----

### TPS Impact: None

----

</details>

<details>
<summary>Block Corners</summary>

### Functions:
`function xze:fx/block_verticies/spawn_with {...}` | Draws a particle on the 8 corners of a block
- `particle`: `String` | Particles that are spawned

----

### Examples:
`/execute anchored eyes positioned ^ ^ ^4 run function xze:fx/block_verticies/spawn_with {particle:"minecraft:flame"}`

----

### Notes:
- Automatically snaps to the block grid

----

### TPS Impact: None

----

</details>

Run `/function xze:demo/laser` or `/function xze:demo/ball` for a demo!
