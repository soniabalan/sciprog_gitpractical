
library("readxl")
library(ggplot2)
Wine <- read_excel("/Users/alejandroadriaquelozano/Downloads/Wine.xlsx", col_names = FALSE)

principal_comp <- prcomp(Wine, scale. = FALSE)

plot(principal_comp$x[, 1], principal_comp$x[, 2], main = "PCA", xlab = "PC1", ylab = "PC2")

Wine2 <- read_excel("/Users/alejandroadriaquelozano/Downloads/Wine-2.xlsx", col_names = FALSE)



# Calculate the percentage of explained variance for each principal component
explained_var <- principal_comp$sdev^2 / sum(principal_comp$sdev^2) * 100

# Create a PCA plot
pca_data <- as.data.frame(principal_comp$x)
samples<- (Wine2[,14])
pca_data$Sample <- paste0('Sample',samples$...14)
 

 ggplot(pca_data, aes(x = PC1, y = PC2, shape = Sample,color = Sample)) +
  geom_point(size = 3) +
  scale_shape_manual(values = c("circle", "triangle",'square')) +
  theme_minimal() +
  # geom_text(aes(label = rownames(pca_data)), size = 3, nudge_x = 0.1, nudge_y = -5) +
  xlab(paste("PCA 1 (",round(explained_var[1],2),'%)')) +
  ylab(paste("PCA 2 (",round(explained_var[2],2),'%)'))

