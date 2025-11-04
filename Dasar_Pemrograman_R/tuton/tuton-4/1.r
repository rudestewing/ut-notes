m = matrix(c(
  5,7,5,4,
  2,9,7,5,
  3,3,4,2,
  8,1,0,3
  ), byrow=TRUE, nrow=4)

print(m)

m_clone <- m

# perkalian matrix akan menghasilkan matrix baru
# sesuai dengan aturan perkalian matrix
# hasil  matrix akan terbentuk dari jumlah baris dan kolom matrix yang dikalikan
result = matrix(0, nrow=nrow(m), ncol=ncol(m_clone))

print(result)

# A. perkalian matrix tapi dengan cara manual satu per satu elemen
for (i in 1:nrow(m)) {
  for (j in 1:ncol(m_clone)) {
    sum = 0
    for (k in 1:ncol(m)) {
      sum = sum + m[i,k] * m_clone[k,j]
    }
    result[i,j] = sum
  }
}

print("Hasil perkalian matrix secara manual:")
print(result)


# B. perkalian matrix secara aljabar
result2 = m %*% m_clone
print("Hasil perkalian matrix secara aljabar:")
print(result2)

# C. Inverse dari matrix m
m_inv = solve(m)
print("Inverse dari matrix m:")
print(m_inv)


# D. Transpose dari matrix m
m_transpose = t(m)
print("Transpose dari matrix m:")
print(m_transpose)

# E. (m)^t * m
result3 = m_transpose %*% m
print("Hasil dari (m)^t * m:")
print(result3)
