library("readxl")

setwd("C:/Users/MK122/OneDrive/Bureaublad/School/Systems Biology/Scientific programming/Final skills session")
Wine = read_excel("Wine.xlsx", col_names = FALSE)
mean_centering <- function(data) {
  Mean_vector <- colMeans(data)
  Mean_centered_data <- sweep(data, 2, Mean_vector, "-")
  return(Mean_centered_data)
}