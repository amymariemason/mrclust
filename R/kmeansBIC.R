kmeansbic <- function(fit) {
  m <- length(fit$cluster)
  k <- nrow(fit$centers)
  d <- fit$tot_withinss
  return(d + 2 * log(m) * k)
}

### POSSIBLE PROBLEM
# Am struggling to see why this is the BIC value. 
# Compare to source for https://rdrr.io/rforge/kmeansstep/src/R/kmeansBIC.R
#### -> return(D + log(n)*m*k) where  m = ncol(fit$centers)
# Compare to http://sherrytowers.com/2013/10/24/k-means-clustering/
##### -> return(D+2*m*k) for AIC
# Please double check this function