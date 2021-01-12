# INSTALL AND LOAD PACKAGES ################################

# Install pacman ("package manager") if needed
if (!require("pacman")) install.packages("pacman")

# Load contributed packages with pacman
pacman::p_load(pacman, party, rio, tidyverse)
# pacman: for loading/unloading packages
# party: for decision trees
# rio: for importing data
# tidyverse: for so many reasons

# LOAD AND PREPARE DATA ####################################

# Specify outcome with df$y

# CSV
# readr::read_csv() -- from tidyverse
(df1 <- read_csv("data/StateData.csv"))

# VERSATILITY!
# XLSX and other formats -- rio::import() from rio
(df2 <- import("data/StateData.xlsx") %>% as_tibble())
# tibble is a kind of R DataFrame

# the piping function comes from the package Magrittr
# and is automatically included in the tidyverse.
df <- import("data/StateData.xlsx") %>%
  as_tibble() %>%                   # cast to tibble
  select(state_code, 
         psychRegions,
         instagram:modernDance) %>% 
  mutate(psychRegions = as.factor(psychRegions)) %>%  # reconstitute column as a factor
  rename(y = psychRegions) %>%    # new name is: 'y'
  print()


# ANALYZE DATA #############################################

# By using standardized object and variable names, the same
# code can be reused for different analyses

# Decision tree -- using party::ctree
# df[, -1]) excludes the first column (state_code)
fit <- ctree(y ~ ., data = df[, -1])  # Create tree
fit %>% plot()                        # Plot tree
fit %>%                               # Predicted vs true
  predict() %>%
  table(df$y)

# dendrogram
hc <- df %>%  # Get data
  dist %>%    # Compute distance/dissimilarity matrix
  hclust %>%  # Compute hierarchical clusters
  plot(labels = df$state_code)  # Plot dendrogram

# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear packages
p_unload(all)  # Remove all add-ons

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
