subj1 <- data.frame(x = 1:5, y = rnorm(5))
#   x          y
# 1 1  0.1300637
# 2 2 -0.7401210
# 3 3  0.8902239
# 4 4  0.3029706
# 5 5  0.1183028
subj2 <- data.frame(x = 1:5, y = rnorm(5))
#   x          y
# 1 1  0.1525950
# 2 2 -0.4685188
# 3 3 -0.0370176
# 4 4 -2.6130548
# 5 5  0.8878447
subj_list <- list(subj1, subj2)

take_y <- function(X, i) {
  X[i,"y"]
}

mapply(take_y, subj_list, 1:4)
# [1]  0.1300637 -0.4685188  0.8902239 -2.6130548

# Note that mapply is a multivariate version of sapply.
# The arguments passed to mapply are vectorized. Hence, the result above is equivalent to:
# c(subj_list[[1]][1, "y"], subj_list[[2]][2, "y"], subj_list[[1]][3, "y"], subj_list[[2]][4, "y"])
