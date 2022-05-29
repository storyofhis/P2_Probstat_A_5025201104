# data x
before <- c(78,75,67,77,70,72,78,74,77)
# data y
after <- c(100,95,70,90,90,90,89,90,100)

# 1a
# untuk melakukan pengecekan data 
data <- data.frame(
  group <- rep(c("before", "after"), each = 9),
  saturation <- c (before, after) 
)
data

standarDeviasi_before <- sd(before)
standarDeviasi_after <- sd(after)


# 1b
# Mencari nilai t(p-value) dengan t-test
t.test(before, after, alternative = "greater", var.equal = FALSE)

# 1c
var.test(before, after)
t.test(before, after, mu = 0, alternative = "two.sided", var.equal = TRUE)
