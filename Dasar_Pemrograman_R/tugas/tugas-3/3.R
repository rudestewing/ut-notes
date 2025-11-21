
# Tuliskan pada program R dengan menggunakan perintah for untuk menghitung Hitung jumlah bilangan genap dari 1 sampai 100.
count_genap <- 0

for (i in 1:100) {
  if (i %% 2 == 0) {
    count_genap <- count_genap + 1
    print(i)
  }
}

print(count_genap)
