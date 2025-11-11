
workingDir <- "/mnt/c/Users/rudi.setiawan/UT/Dasar_Pemrograman_R/tuton/tuton-6"
setwd(workingDir)


filePath <- "./data2.txt"
dataTxt <- read.table(filePath, header=FALSE)

print(dataTxt)

# coba langsung masukan ke matrix
matrixData <- as.matrix(dataTxt)
print("matrix dari dataTxt langsung:")
print(matrixData)


# coba cara manual
matrixManual <- matrix(nrow=4, ncol=10)

print("Matrix manual masih kosong:")
print(matrixManual)

# looping dataTxt table masukan ke matrix manual
for (i in 1:nrow(dataTxt)) {
  for (j in 1:ncol(dataTxt)) {
    matrixManual[i, j] <- dataTxt[i, j]
  }
}

print("Matrix manual setelah diisi:")
print(matrixManual)
