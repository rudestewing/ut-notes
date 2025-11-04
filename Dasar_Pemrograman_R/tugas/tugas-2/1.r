# Tambahkan kolom ke 4 dari matriks 𝑀 dengan nama 𝑀1
# dan Tambahkan kolom ke 1 dari matriks 𝑀 dengan nama 𝑀2  dengan angka 7,4,5 Sehingga matriks yang

m <- matrix(c(10,5,6,2,6,8,4,2,7), ncol=3, byrow=TRUE)

print("matrix m:")
print(m)

# ambil kolom ke-1 matrix m sebagai matrix m1
m1 <- m[,1]

print(m1)

# menambahkan m1 sebagai kolom ke-4 untuk matrix m
m <- cbind(m[,1:ncol(m)], m1)
print("Matrix m dengan kolom ke-4:")
print(m)


# buat matrix m2
m2 <- matrix(c(7,4,5))
print("m2:")
print(m2)

# matrix kolom 1 tidak berubah. masih bisa pakai variable m1
result <- m1 + m2
print("Hasil penjumlahan kolom ke-1 matrix m dengan m2:")
print(result)

m[,1] <- result
print("Matrix m setelah kolom ke-1 ditambahkan dengan m2:")
print(m)
