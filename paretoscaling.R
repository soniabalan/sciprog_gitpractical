pareto_scaling = function(data) {
  col_means = colMeans(data)
  sds = apply(data, 2, sd)
  data_mean_scaled = data - replicate(nrow(data), col_means)
  scale_factors = data_mean_scaled / sqrt(sds)
  #pareto_scaled_df = sweep(data, 2, scale_factors, "*")
  return(scale_factors)
}
