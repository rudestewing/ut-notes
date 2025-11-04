pathFile <- "/mnt/c/Users/rudi.setiawan/UT/Dasar_Pemrograman_R/tugas/tugas-2/Nilai_Komputer.txt"
# path ini menggunakan /mnt/c karena saya menggunakan WSL di Windows (laptop kantor)
# path dapat disesuaikan lagi

# menggunakan read.table untuk baca file dari .txt,
# header dibuat true
# separator menggunakan koma
data <- read.table(pathFile, header=TRUE, sep=",")

print("Data Nilai Komputer:")
print(data)
