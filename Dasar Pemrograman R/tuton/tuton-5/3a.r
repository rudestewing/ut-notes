# contoh program dengan fungsi pie chart

jumlah <- c(120, 80, 50, 30)
prodi <- c("Statistika", "Matematika", "Fisika", "Kimia")

#  buat pie chart
pdf("3a-pie-chart.pdf")

pie(
  jumlah,
  labels = paste(
    prodi,
    "\n",
    round(jumlah/sum(jumlah)*100),"%"
  ),
  col=c("skyblue", "orange", "green", "pink"),
  main = "Proporsi Mahasiswa Per Prodi"
)
