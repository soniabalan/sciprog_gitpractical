
library("readxl")
Wine <- read_excel("Wine.xlsx", col_names = FALSE)

principal_comp <- prcomp(Wine, scale. = FALSE)

plot(principal_comp$x[, 1], principal_comp$x[, 2], main = "PCA", xlab = "PC1", ylab = "PC2")




