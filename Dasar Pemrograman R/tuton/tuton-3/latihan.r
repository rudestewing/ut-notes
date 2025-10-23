# vector bilangan berurutan
a0 <- 1:12 # 1 2 3 4 5 6 7 8 9 10 11 12

# print(a0)

# vector bilangan campuran
a1 <- c(1,5,4,6,7,3) # 1 5 4 6 7 3

# vector karakter
a2 <- c("Budi", "Siti", "Ani") # "Budi" "Siti" "Ani"
# print(a1)
# print(a2)

# deret bilangan
a4 <- seq(1,10,by=2) #  1 3 5 7 9

# bilangan 1 sampai 10 dengan 5 elemen dengan selisih yang sama
a5 <- seq(1,10,length=5) #  1.00  3.25  5.50  7.75 10.00

# print(a4)
# print(a5)

# membuat pengulangan bilangan
a6 <- rep(1:3,2) # 1 2 3 1 2 3
a7 <- rep(1:3, each=2) # 1 1 2 2 3 3

print(a6)
print(a7)

a8 <- paste("X", 1:5, sep="-") # "X-1" "X-2" "X-3" "X-4" "X-5"
print(a8)
