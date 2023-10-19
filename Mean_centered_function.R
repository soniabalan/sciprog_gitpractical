library("readxl")

setwd("C:/Users/MK122/OneDrive/Bureaublad/School/Systems Biology/Scientific programming/Final skills session/Git/sciprog_gitpractical")
Wine = read_excel("Wine.xlsx", col_names = FALSE)
mean_centering <- function(data) {
  Mean_vector <- colMeans(data)
  Mean_centered_data <- sweep(data, 2, Mean_vector, "-")
  return(list(Mean_centered_data = Mean_centered_data, Mean_vector = Mean_vector))
}

Scaled_data = mean_centering(Wine)
Mean_centered_data = Scaled_data$Mean_centered_data
Mean_vector = Scaled_data$Mean_vector