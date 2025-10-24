# Contoh Program 1

# Perkalian antar matrix

matrixA <- matrix(c(1:9), nrow=3, ncol=3)
matrixB <- matrix(c(1:9), nrow=3, ncol=3, byrow=TRUE)

print("Matrix A:")
print(matrixA)
print("matrix B:")
print(matrixB)

matrixC <- matrixA %*% matrixB
print("Hasil perkalian Matrix A dan Matrix B adalah Matrix C:")
print(matrixC)
