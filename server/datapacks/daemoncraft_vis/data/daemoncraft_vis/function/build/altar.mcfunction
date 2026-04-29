# Spawn a small 3x3 altar
# Platform
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 stone_bricks
# Pillars
setblock ~-1 ~ ~-1 stone_bricks
setblock ~1 ~ ~-1 stone_bricks
setblock ~-1 ~ ~1 stone_bricks
setblock ~1 ~ ~1 stone_bricks
# Roof
fill ~-1 ~1 ~-1 ~1 ~1 ~1 stone_bricks
# Campfire center
setblock ~0 ~ ~0 campfire
# Feedback
say Altar construido!
