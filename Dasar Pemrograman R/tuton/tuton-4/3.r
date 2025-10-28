# contoh program R dengan matrix
m = matrix(c(
  4,7,2,
  3,6,1,
  2,5,3
),  byrow=TRUE, nrow=3)

print("Matrix m:")
print(m)

# det dari matrix m
det_m <- det(m)
print("Determinan dari matrix m adalah:")
print(det_m)

# inverse dari matrix m
m_inv <- solve(m)
print("Inverse dari matrix m adalah:")
print(m_inv)

# Mencari persamaan linear menggunakan matrix dan OBE
# pertambahan matrix a + b
a <- matrix(c(1,2,3,
              4,5,6,
              7,8,9), byrow=TRUE, nrow=3)

b <- matrix(c(9,8,7,
              6,5,4,
              3,2,1), byrow=TRUE, nrow=3)
print("Matrix a:")
print(a)
print("Matrix b:")
print(b)
c <- a + b
print("Hasil pertambahan matrix a + b:")
print(c)
