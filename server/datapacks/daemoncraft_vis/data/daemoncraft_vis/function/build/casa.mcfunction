# Spawn a small 5x5 oak hut around the player
# Floor
fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 cobblestone
# Walls
fill ~-2 ~ ~-2 ~2 ~2 ~-2 oak_planks
fill ~-2 ~ ~2 ~-1 ~2 ~2 oak_planks
fill ~1 ~ ~2 ~2 ~2 ~2 oak_planks
fill ~2 ~ ~-1 ~2 ~2 ~1 oak_planks
fill ~-2 ~ ~-1 ~-2 ~2 ~1 oak_planks
# Roof
fill ~-2 ~3 ~-2 ~2 ~3 ~2 oak_planks
# Torches outside
setblock ~-2 ~ ~-3 torch
setblock ~2 ~ ~-3 torch
setblock ~-2 ~ ~3 torch
setblock ~2 ~ ~3 torch
# Feedback
say Casa construida!
