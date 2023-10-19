# install.packages("readxl")
library(readxl)
source("autoscaling.R") #add script names

# load data
data <- read_excel("Wine.xlsx", col_names = F)
colnames(data)[ncol(data)] <- "class"

# select training data
data_train <- data[data$class < 3,]
data_test <- data[data$class == 3,]
data_train_scaled <- autoScaling(data_train)
data_test_mean <- colMeans(data_train)
data_test_std <- sapply(data, sd)
data_test_scaled <- autoScaling(data_test, data_test_mean, data_test_std)

# also save mean and std

# scores,loadings <- pca(data_train_scaled)
# scores_projected <- data_test_scaled * loadings
# 
# visualization(c[scores;scores_projected])