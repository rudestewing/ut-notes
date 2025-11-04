jumlah <- c(120, 80, 50, 30)
prodi <- c("Statistika", "Matematika", "Fisika", "Kimia")

#  buat pie chart
pdf("pie-chart.pdf")

pie(
  jumlah,
  labels = paste(
    prodi,
    "\n",
    round(jumlah/sum(jumlah)*80),"%"
  ),
  col=c("skyblue", "orange", "green", "pink"),
  main = "Proporsi Mahasiswa Per Prodi"
)
