# Information ----
# Author: Diego Rodríguez
# Date of creation: 19/10/2023

# Loading ----
## Packages ----

## Data ----

# Functions ----
autoScaling = function(data, mean_in = NULL, std_in = NULL){
  if (!is.null(mean_in)){
    col_means = colMeans(data)
  }else{
    col_means = mean_in
  }
  
  if (!is.null(mean_in)){
    col_sd = sapply(data, sd)
  }else{
    col_sd = std_in
  }
  
  data_mean_scaled = data - replicate(nrow(data), col_means)
  data_mean_scaled = data_means_scaled / replicate(nrow(data), col_sd)
  return(data_mean_scaled)
}
