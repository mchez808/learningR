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
(df <- read_csv("data/StateData.csv"))

# VERSATILITY!
# XLSX and other formats -- rio::import() from rio
(df <- import("data/StateData.xlsx") %>% as_tibble())
# tibble is a kind of R DataFrame

# the piping function comes from the package Magrittr
# and is automatically included in the tidyverse.
df <- import("data/StateData.xlsx") %>%
  as_tibble() %>%
  select(state_code, 
         psychRegions,
         instagram:modernDance) %>% 
  mutate(psychRegions = as.factor(psychRegions)) %>%
  rename(y = psychRegions) %>%
  print()


# (TMP) first half of "Importing data" lesson
