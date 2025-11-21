# distribusi normal
mean <- 0      
standard_deviation <- 1  

x_values_normal <- seq(-4, 4, length.out = 100)


density_values_normal <- dnorm(x_values_normal,
                               mean = mean,
                               sd = standard_deviation) 

plot(x_values_normal, density_values_normal,
     type = "l", 
     main = expression("Grafik Kepadatan Distribusi Normal Standar"),
     xlab = expression("Nilai"),
     ylab = "Kepadatan")

grid()
