# ambil data mahasiswa dari csv,
# disini ada 50 row data mahasiswa dengan kolom: Nim, Nama, Fakultas, Jenis_Kelamin
dataMahasiswa <- read.csv('data_mahasiswa.csv')
fakultasList <- unique(dataMahasiswa$Fakultas)

print(fakultasList)

# hitung jumlah mahasiswa per fakultas
jumlahPerFakultas <- c()
for (fakultas in fakultasList) {
  jumlah <- sum(dataMahasiswa$Fakultas == fakultas)
  jumlahPerFakultas <- c(jumlahPerFakultas, jumlah)
}

# buat pie chart nya dimulai dari sini
pdf("3b-pie-chart.pdf")

pie(
  jumlahPerFakultas,
  labels = paste(
    fakultasList,
    "\n",
    round(jumlahPerFakultas/sum(jumlahPerFakultas)*100),"%"
  ),
  col=rainbow(length(fakultasList)),
  main = "Proporsi Mahasiswa Per Fakultas"
)
