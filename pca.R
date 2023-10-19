

# data methos scaled is th sale wine file and in classes you have row associated to their labels 
pca <- function(data_method_scaled,classes) { 
  principal_comp <- prcomp(data_method_scaled, scale. = FALSE)
  plot(principal_comp$x[, 1], principal_comp$x[, 2], main = "PCA",col = classes, xlab = "PC1", ylab = "PC2")
}