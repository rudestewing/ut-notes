jurusan <- c("Statistika", "Matematika", "Fisika")
kota <- c("Jakarta", "Bandung", "Surabaya")
angkatan <- 2021:2024

# membuat dengan data.frame
mahasiswaDataFrame <- data.frame(
  kode =  sprintf("MHSW_%d", 1:(length(jurusan)*length(kota)*length(angkatan))),
  jurusan = rep(jurusan, each=length(kota)*length(angkatan)),
  kota = rep(rep(kota, each=length(angkatan)), times=length(jurusan)),
  angkatan = rep(angkatan, times=length(jurusan)*length(kota))
)
# print(mahasiswaDataFrame)


# mencoba buat dengan expand.grid
mahasiswa <- expand.grid(jurusan=jurusan, kota=kota, angkatan=angkatan)

# head(mahasiswa)

print(mahasiswa)
