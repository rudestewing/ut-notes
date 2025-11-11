
workingDir <- "/mnt/c/Users/rudi.setiawan/UT/Dasar_Pemrograman_R/tuton/tuton-6"
setwd(workingDir)

filePath <- "./contoh-transaksi.txt"

dataTransaksi <- read.table(filePath, header=TRUE, sep=",")

# Konversi kolom tanggal ke format Date
dataTransaksi$tanggal <- as.Date(dataTransaksi$tanggal)

print(dataTransaksi)

pdf("line_chart-contoh-transaksi.pdf")
# bikin line chart berdasarkan data transaksi
# x adalah tanggal nya
# y adalah total transaksinya

plot(
  dataTransaksi$tanggal,
  dataTransaksi$total,
  type="o",
  col="blue",
  xlab="Tanggal",
  ylab="Total Transaksi",
  main="Line Chart Total Transaksi per Tanggal"
)
