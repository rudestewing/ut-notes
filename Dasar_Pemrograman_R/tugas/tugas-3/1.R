# kurval normal dengan nilai −3 < 𝑥 < 3,
# panjang 300,
# keterangan sumbu (x,y) = (x, density) dan garis sumbu 𝑥 di tandai dengan warna merah.

mean <- 0
standard_deviation <- 1
x_values <- seq(-3, 3, length.out = 300)
density_values <- dnorm(x_values,
                               mean = mean,
                               sd = standard_deviation)
plot(x_values, density_values,
     type = "l",
     main = expression("Kurval Normal"),
     xlab = expression("x"),
     ylab = "density")

abline(h=0, col="red")

grid()

