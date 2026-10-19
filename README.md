## A Collection of Novel Visual Effects

xokz's Particle Effects aims to provide several useful particle effects for datapack creation.

This datapack is purely a library, and contains no ticking function. It exists only to be called by other datapacks, or to be modified.

### Effects
(Check the gallery for visuals!)

<details>
<summary>Lightning</summary>

### Functions:
`xze:fx/lightning/spawn`
- Must be run **at** the origin point, and **as** the entity to move towards
  - To target a location instead, spawn a marker there and run as that

### Examples:
`execute positioned ~ ~ ~ as @p run function xze:fx/lightning/spawn`
- Put this in a repeating command block and see what happens

### Notes:
- To change the lightning segment length and angles, you can change the ranges in the `generate_pitch_yaw_len.mcfunction` function
- To change the chance of a branch being made, change the value in the `lightning_branch_chance.json` predicate

### PERFORMANCE IMPACT: Low

</details>

<details>
<summary>Spiral</summary>

# IN BETA, USE AT YOUR OWN RISK

### Functions:
`xze:fx/spiral/spawn_with {particle:"<particle>",radius:<num>,period:<num>}`
- Must be run **at** the origin point, and **as** the entity to move towards
  - To target a location instead, spawn a marker there and run as that
- Draws a columnal spiral between the origin point and target entity with the given particle, radius, and period
  - Period is the distance the spiral moves forward between each loop

### Examples:
`execute positioned ~ ~ ~ as @p run function xze:fx/spawn_with {particle:"minecraft:end_rod",radius:1,period:3}`
- Put this in a command block, move away, and activate it

### Notes:
- Increase the gamerule `max_command_sequence_length` to a larger number like 1000000, otherwise your spiral may get cut off

### PERFORMANCE IMPACT: High
- Not recommended to run every tick!

</details>

<details>
<summary>Circle</summary>

### Functions:
`function xze:fx/circle/spawn_with {particle:"<particle>",radius:<num>}` 
- Spawns a circle of the provided particle and radius perpendicular to the execution look direction

### Examples:
`execute anchored eyes positioned ^ ^ ^5 run function xze:fx/circle/spawn_with {particle:"minecraft:end_rod",radius:2.5}`

### PERFORMANCE IMPACT: Neglegible

</details>

<details>
<summary>Block Edge Outline</summary>

### Functions:
`function xze:fx/block_outline/spawn`
- Spawns the block edge outline effect with the default end rod particle
  
`function xze:fx/block_outline/spawn_with {particle:"<particle>"}` 
- Spawns the block edge outline effect using the provided particle

### Examples:
`function xze:fx/block_outline/spawn_with {particle:"minecraft:flame"}` 

### Notes:
- Automatically snaps to the block grid

### PERFORMANCE IMPACT: Neglegible

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

### PERFORMANCE IMPACT: Neglegible

</details>

<details>
<summary>Line</summary>

### Functions:
`xze:fx/line/spawn_with {particle:"<particle>"}`
- Must be run **at** the origin point, and **as** the entity to move towards
  - To target a location instead, spawn a marker there and run as that
- Spawns a line of particles between the origin point and target entity
  
### Examples:
`execute positioned ^ ^ ^10 as @p run function xze:fx/line/spawn_with {particle:"minecraft:end_rod"}`

### PERFORMANCE IMPACT: Low

</details>

Run `/function xze:demo/laser` for a demo!