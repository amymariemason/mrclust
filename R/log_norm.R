log_norm <- function(i, j, tmp_lgt, tmp_lgt2, theta, theta_sd, theta_clust) {
  tmp_theta <- rep(theta[i], tmp_lgt2)
  tmp_theta_sd <- rep(theta_sd[i], tmp_lgt2)
  tmp_clust <- rep(theta_clust[j], each = tmp_lgt)
  res <- (-0.5 * log(2 * pi) - log(tmp_theta_sd)
          - 0.5 * (tmp_theta - tmp_clust)^2 / tmp_theta_sd^2)
  return(res)
}

# SUGGESTION: to function correctly tmp.lgt must equal length(i) & tmp.lgt must equal length(j)
# to avoid this function breaking I suggest either 
## 1) removing these variables and simply defining them within the function 
## 2) setting length(i), length(j) as defaults (which would require not later re-writing)

# SUGGESTION: you could use the null.den function above to replace the final line 
# - I think this reads a bit cleaner, but is not essential