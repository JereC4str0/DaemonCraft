# Spawn a small 3x3 stone tower
# Base
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 stone_bricks
# Walls 5 high
fill ~-1 ~ ~-1 ~1 ~4 ~1 stone_bricks
# Hollow inside
fill ~0 ~ ~0 ~0 ~3 ~0 air
# Light on top
setblock ~0 ~5 ~0 glowstone
# Feedback
say Torre construida!
