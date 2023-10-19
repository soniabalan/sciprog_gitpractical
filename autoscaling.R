# Information ----
# Author: Diego Rodríguez
# Date of creation: 19/10/2023

# Loading ----
## Packages ----

## Data ----

# Functions ----
meanScaling = function(data){
  col_means = colMeans(data)
  data_mean_scaled = data - replicate(nrow(data), col_means)
}