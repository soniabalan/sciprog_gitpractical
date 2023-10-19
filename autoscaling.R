# Information ----
# Author: Diego Rodríguez
# Date of creation: 19/10/2023

# Loading ----
## Packages ----
test
## Data ----

# Functions ----
autoScaling = function(data){
  col_means = colMeans(data)
  col_sd = sapply(data, sd)
  data_mean_scaled = data - replicate(nrow(data), col_means)
  data_mean_scaled = data_means_scaled / replicate(nrow(data), col_sd)
  return(data_mean_scaled)
}
