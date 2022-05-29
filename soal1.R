# data x
before <- c(78,75,67,77,70,72,78,74,77)
# data y
after <- c(100,95,70,90,90,90,89,90,100)

# untuk melakukan pengecekan data 
data <- data.frame(
  group <- rep(c("before", "after"), each = 9),
  saturation <- c (before, after) 
)
data

standarDeviasi_before <- sd(before)
standarDeviasi_after <- sd(after)
