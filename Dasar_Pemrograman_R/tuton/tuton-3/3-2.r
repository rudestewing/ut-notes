
# Pembuatan Prefix pada kolom ID

mahasiswa <- c("Andi", "Budi", "Citra")
nilai <- c(85, 90, 78)

data <- data.frame("id"=paste("MHS", 1:3, sep="-"), mahasiswa = mahasiswa, Nilai = nilai)
cat("\n=== DATA FRAME ===\n")
print(data)
