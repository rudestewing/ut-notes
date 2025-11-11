
workingDir <- "/mnt/c/Users/rudi.setiawan/UT/Dasar_Pemrograman_R/tuton/tuton-6"
setwd(workingDir)

filePath <- "./tiket_pesawat.csv"

dataTiketPesawat <- read.csv(filePath, header=TRUE, sep=",")

print(dataTiketPesawat)
