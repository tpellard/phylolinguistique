library(tidyverse)
library(ggtree)
set.seed(1234567890)
tree <- rtree(33)

ggtree(tree, branch.length = "none", layout = "circular", color = "#adb5bd", size = .5) +
  theme_void()
ggsave("phyloling_circ.png", width = 300, height = 300, units = "px", dpi = 300)
knitr::plot_crop("phyloling_circ.png")

ggtree(tree, branch.length = "none", layout = "fan", color = "#adb5bd", size = .25, open.angle = 180) +
  theme_void()
ggsave("phyloling_scirc.png", width = 150, height = 150, units = "px", dpi = 300)
knitr::plot_crop("phyloling_scirc.png")
