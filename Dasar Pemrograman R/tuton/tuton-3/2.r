# time series

dataku <- ts(2:10, frequency=4, start=c(2020,3))
# 2:10 adalah data deret data nya menggunakan bilangan berurutan dari 2 sampai 10
# frequency=4 untuk data kuartal
# start=c(2020,3) artinya data dimulai dari kuartal ke-3 tahun 2020

print(dataku)
