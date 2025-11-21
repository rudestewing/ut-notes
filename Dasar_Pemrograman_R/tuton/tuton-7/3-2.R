x <- 1:10
x <- rep(x,rep(3, length(x)))

plot(
  x[-1], 
  pbinom(x, size=10, prob =0.5)[-length(x)],
  xlab = expression("Number success"),
  ylab = expression("Cumulative Probability"),
  main = expression("Distribusi Binomial"),
  type = "l")

abline(h=0)