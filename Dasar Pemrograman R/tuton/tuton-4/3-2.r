# contoh program R dengan matrix

# diketahui matrix 6x6
m = matrix(c(
  4,7,2,3,5,1,
  3,6,1,4,2,8,
  2,5,3,7,6,4,
  1,2,4,5,3,7,
  5,3,6,2,4,1,
  7,4,5,1,8,2
), byrow=TRUE, nrow=6)

print("Matrix m 6x6:")
print(m)

m1 <- m[1:3, 1:3]
print("Submatrix m1 (3x3):")
print(m1)

m2 <- m[4:6, 4:6]
print("Submatrix m2 (3x3):")

# mResult = m1 %*% m2
mResult <- m1 %*% m2
print("Hasil perkalian m1 dan m2 adalah:")
print(mResult)
