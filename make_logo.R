library(tidyverse)
library(ggtree)
set.seed(1234567890)
tree <- rtree(33)
ggtree(tree, branch.length='none', layout='circular', color = "#adb5bd", size = 1) +
  theme_void()
ggsave("phyloling.svg", width = 400, height = 400, units = "px")
ggsave("phyloling.png", width = 400, height = 400, units = "px")
