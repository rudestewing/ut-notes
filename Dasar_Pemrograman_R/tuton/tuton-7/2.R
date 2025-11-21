derajat_chisquare <- 10

x_values <- seq(0, 30, length.out = 100)

density_values <- dchisq(x_values, df = derajat_chisquare)

# 4. Buat plot
plot(x_values, density_values,
     type = "o",
     main = expression("Grafik kepadatan distribusi chisquare"),
     xlab = expression("Nilai"),
     ylab = "Kepadatan")

grid()
