# mengolah data mahasiswa dan menentukan kelulusan berdasarkan IPK
# load data mahasiswa dari csv
# update kolom kelulusan sesuai kondisi ipk

# mencoba mengunakan function untuk menghitung kelulusan
cek_kelulusan <- function(ipk) {
  min_ipk <- 2.5

  if (ipk >= min_ipk) {
    return("yes")
  } else {
    return("no")
  }
}

data_mahasiswa <- read.csv("../data_mahasiswa.csv")
data_mahasiswa$lulus <- sapply(data_mahasiswa$ipk, cek_kelulusan)
# print(data_mahasiswa)

# save data ke file csv baru bernama data_mahasiswa_parsed.csv
write.csv(data_mahasiswa, "data_mahasiswa_parsed.csv", row.names=FALSE)

data_mahasiswa_parsed <- read.csv("data_mahasiswa_parsed.csv")
print(data_mahasiswa_parsed)
