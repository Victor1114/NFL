#### Preamble ####
# Purpose: Downloads and analysis the data from NFL
# Author: Yuchen Chen
# Contact: victorchen.chen@mail.utoronto.ca
# Date: 3 April, 2024
# License: MIT
# Pre-requisites: 
-
#### Workspace setup ####
library(nflverse)
library(tidyverse)

#### Download data ####
qb_2023_season_states<-
  load_player_stats((seasons =TRUE)) |>
  filter(season_type == "REG" & position == "QB" & season == 2023 & !is.na(passing_epa))

#### Save data ####
write_csv(qb_2023_season_states, "data/analysis_data.csv") 

         
