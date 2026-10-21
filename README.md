## A Collection of Novel Visual Effects

xokz's Particle Effects provides several useful effects for datapackers and mapmakers.

This datapack is purely a library, and contains no ticking function. It exists only to be called by other datapacks, and/or to be modified.

Run `/function xze:demo/laser` or `/function xze:demo/ball` for a demo!

----

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

<img width="400" height="225" alt="lightning" src="https://github.com/user-attachments/assets/f7aca187-e37d-4a1c-93bc-73ea452fd700" />

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
- `angle`: `Number` | The *starting* rotation angle of the spiral, in radians. If unsure, use 0
- Must be run **at** the origin point, and **as** the entity to move towards
  - To target a location instead, spawn a marker there and run as that

----

### Examples:
`execute positioned ~ ~1 ~ as @p run function xze:fx/spiral/spawn_with {particle:"minecraft:electric_spark",radius:0.8,period:2,angle:0}`
- Put this in a repeating command block

<img width="400" height="225" alt="2026-10-20 21-41-41" src="https://github.com/user-attachments/assets/8ed6db4d-08c8-4cd3-bbbb-ee6b18210177" />

----

### Notes:
- Increase the gamerule `max_command_sequence_length` to a larger number like 1000000, otherwise the spiral may get cut off

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

<img width="400" height="225" alt="2026-10-20 21-50-15" src="https://github.com/user-attachments/assets/acf49c2e-ec2d-4717-9987-525b50772270" />

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

<img width="400" height="225" alt="2026-10-20 21-53-06" src="https://github.com/user-attachments/assets/e1d74598-fb2a-488a-8d6c-dde5773f979f" />

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

<img width="400" height="225" alt="2026-10-20 21-54-46" src="https://github.com/user-attachments/assets/c6444361-3273-4ed6-b2f1-eebf6f9d82d5" />

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

<img width="400" height="225" alt="moving" src="https://github.com/user-attachments/assets/a4aeab14-c501-4a75-862d-3329dfd63150" />

----

### Notes:
- Automatically snaps to the block grid, no need to manually align

----

### TPS Impact: None

----

</details>

<details>
<summary>Block Corners</summary>

----

### Functions:
`function xze:fx/block_verticies/spawn_with {...}` | Draws a particle on the 8 corners of a block
- `particle`: `String` | Particles that are spawned

----

### Examples:
`/execute anchored eyes positioned ^ ^ ^4 run function xze:fx/block_verticies/spawn_with {particle:"minecraft:end_rod"}`

<img width="400" height="225" alt="2026-10-20 21-58-07" src="https://github.com/user-attachments/assets/24d0086c-5d14-44f2-b3d8-8973bea13a23" />

----

### Notes:
- Automatically snaps to the block grid

----

### TPS Impact: None

----

</details>

----

### The Marker

Several effects use both an origin point an an entity for performance and ease of implementation.
While this can be very convenient for drawing an effect bewteen a point and a target, it can be
difficult when the desired destination is not an entity, or specifically not the feet of an entity.

For this reason there is a set of helper functions that spawns and removes a marker.
This marker has a fixed UUID, making it extremely fast to select, and removes the need for an `@e` or `@n`.

The Marker's UUID: `91b50803-54c7-44b9-8a3d-6384cfa2939d`

For example, To draw a lightning bolt between positions `0 10 0` and `20 10 20`, a function like this could be used:
```
execute positioned 20 10 20 run function xze:marker/spawn
execute positioned 0 10 0 as 91b50803-54c7-44b9-8a3d-6384cfa2939d run function xze:fx/lightning/spawn_with {particle:"minecraft:electric_spark"}
function xze:marker/delete
```
Critically, it is important that this marker does not get unloaded. Thus, it should be deleted as soon as it is no longer needed.

</details>

<details>
<summary>Functions</summary>
  
`xze:marker/spawn` | Spawns the marker at the context location. If the marker is already spawned, teleports it there instead

`xze:marker/delete` | Deletes the marker via `/kill`

`xze:marker/tp` | Teleports the marker to the context location

</details>

----

### Tips and Tricks

</details>

<details>
<summary>Moving Effects</summary>
  
----

Every effect takes in a `particle` argument. This argument typically takes the form of a simple particle name, like `"minecraft:flame"`.
However, the macro itself is just the arguments for the `/particle` command internally, which means that additional
arguments can be provided in the field in every effect (except for the moving block outline effect). For example, this can be used
to create an expanding sphere, like so: 

`/execute at @s anchored eyes positioned ^ ^ ^10 run function xze:fx/sphere/spawn_with {particle:"minecraft:end_rod ~ ~ ~ ^ ^ ^100000 0.000002 0 force",radius:4}`

<img width="400" height="225" alt="2026-10-20 21-59-28" src="https://github.com/user-attachments/assets/933ddbb9-4fb5-4f0e-8b58-8f915ae342fc" />

- The speed is controlled by the Speed argument, the `0.000002`. Very small changes can make big differences.
- The direction is controlled by the last value in the Delta argument, the `^100000`. Making this value negative (`^-100000`) will
cause the sphere to contract instead.

----

</details>
