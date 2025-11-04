# contoh program R dengan matrix
# function mengecek matrix apakah singular

is_singular <- function(mat) {
  return(det(mat) == 0)
}

matrixA <- matrix(c(2, 4, 1, 3), nrow=2)
print(paste("Matrix A adalah singular: ", is_singular(matrixA)))

matrixB <- matrix(c(1, 2, 2, 4), nrow=2)
print(paste("Matrix B adalah singular: ", is_singular(matrixB)))
