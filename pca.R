library(ggplot2)
#data method scaled have the classes

plot_pca <- function(data_method_scaled) { 
  principal_comp <- prcomp(data_method_scaled[,c(1:13)], scale. = FALSE)
  
  # Calculate the percentage of explained variance for each principal component
  explained_var <- principal_comp$sdev^2 / sum(principal_comp$sdev^2) * 100
  
  # Create a PCA plot
  pca_data <- as.data.frame(principal_comp$x)
  samples<- (data_method_scaled[,14])
  pca_data$Sample <- paste0('Sample',samples$...14)
  listwithscoresandloadings$scorse <- principal_comp$x
  listwithscoresandloadings$load <- principal_comp$rotation
  
  
  ggplot(pca_data, aes(x = PC1, y = PC2, shape = Sample,color = Sample)) +
    geom_point(size = 3) +
    scale_shape_manual(values = c("circle", "triangle",'square')) +
    theme_minimal() +
    # geom_text(aes(label = rownames(pca_data)), size = 3, nudge_x = 0.1, nudge_y = -5) +
    xlab(paste("PCA 1 (",round(explained_var[1],2),'%)')) +
    ylab(paste("PCA 2 (",round(explained_var[2],2),'%)'))
  
}

get_scorseandloadings <- function(data_method_scaled) { 
  principal_comp <- prcomp(data_method_scaled[,c(1:13)], scale. = FALSE)
  list(scores =principal_comp$center ,load =principal_comp$rotation )
}
