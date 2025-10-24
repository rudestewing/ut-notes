
# Membuat Matrix
matrixA <- matrix(c(1, seq(-3,1,by=1)), nrow=2, ncol=3)

print("Matrix A:")
print(matrixA)

# Mencoba membuat matrix dengan assignment per baris
matrixB <- matrix(nrow=3, ncol=2)
matrixB[1,] <- c(-3, 4)
matrixB[2,] <- c(2, -2)
matrixB[3,] <- c(-1, 5)

print("Matrix B:")
print(matrixB)

# Mencoba membuat matrix dengan assignment per kolom
matrixC <- matrix(nrow=3, ncol=3)
matrixC[,1] <- c(1, -1, 0)
matrixC[,2] <- c(0, 3, 1)
matrixC[,3] <- c(2, 0 , 1)

print("Matrix C:")
print(matrixC)
