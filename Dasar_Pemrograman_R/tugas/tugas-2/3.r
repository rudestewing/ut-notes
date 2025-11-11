
setwd("/Users/rudisetiawan/Repositories/ut-notes/Dasar_Pemrograman_R/tugas/tugas-2")

pathFile <- "Nilai_Komputer.txt"

# menggunakan read.table untuk baca file dari .txt,
# header dibuat true
# separator menggunakan koma
data <- read.table(pathFile, header=TRUE, sep=",")

print("Data Nilai Komputer:")
print(data)
