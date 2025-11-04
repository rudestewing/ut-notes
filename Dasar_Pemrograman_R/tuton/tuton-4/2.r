m = matrix(c(
  5,7,5,4,
  2,9,7,5,
  3,3,4,2,
  8,1,0,3
  ), byrow=TRUE, nrow=4)


a <- matrix(c(1,4,5,6), ncol=4, byrow=TRUE)

b <- matrix(c(
  1,2,4,4,
  1,2,3,4
  ), ncol=4, byrow=TRUE)

print(a)
print(b)


# A. membuat matrix mengambil elemen dari matrix m
# 9 5
# 2 1

m1 <- matrix(c(m[2,2], m[2,4],
                m[3,4], m[4,2]), nrow=2, byrow=TRUE)
print("Anak matrix M: m1")
print(m1)

# B. membuat matrix mengambil elemen dari matrix m
# 7 4
# 4 3

m2 <- matrix(c(
  m[1,2], m[1,4],
  m[1,4], m[4,4]
), nrow=2, byrow=TRUE)
print("Anak matrix M: m2")
print(m2)


# membuat matrix m3, menambahkan matrix a ke baris ke 5 matrix m
m3 <- rbind(m, a) # coba pake rbin tanpa argumen tambahan, karena matrix berukuran 4x4 dan baris ke 5 adalah baris terakhirnya
print("Matrix m3 (setelah menambahkan matrix a ke baris ke 3 matrix m):")
print(m3)

m3_alt <- rbind(m[1:nrow(m), ], a) # coba pakai argumen tambahan untuk menandakan menambahkan di baris ke berapa
print("Matrix m3_alt (setelah menambahkan matrix a ke baris ke 3 matrix m):")
print(m3_alt)

# menambahkan (b)^t ke kolom 1 dan 2 matrix m , membentuk matrix m4
bt <- t(b)
m4 <- cbind(m[,0:0], bt, m[,1:ncol(m)])
print("Matrix m4 (setelah menambahkan (b)^t ke kolom 1 dan 2 matrix m):")
print(m4)
