# contoh program 2

workingDir <- "/mnt/c/Users/rudi.setiawan/UT/Dasar_Pemrograman_R/tuton/tuton-6"
setwd(workingDir)

filePath <- "./matrix.txt"

dataTxt <- readLines(filePath)
dataMatrix <- as.matrix(read.table(text = dataTxt, header=FALSE, sep=" "))
