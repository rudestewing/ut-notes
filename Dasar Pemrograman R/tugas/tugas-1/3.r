activity <- list(
  shalat = 5 * 15,        # (5x sehari, 15 menit)
  makan = 3 * 20,         # (3x sehari, 20 menit) - kurangi 30 menit
  tidur = 7 * 60,         # (7 jam) - tetap
  bekerja = 7 * 60,       # (7 jam) - kurangi 60 menit
  istirahat = 20,         # (20 menit) - kurangi 10 menit
  commuting = 90,         # (1.5 jam) - kurangi 30 menit
  belajar = 45,           # (45 menit) - kurangi 15 menit
  mandi = 2 * 10,         # (20 menit) - kurangi 10 menit
  sosialisasi = 30,       # (30 menit)
  bermain_hp = 45,        # (45 menit)
  menonton_youtube = 20,  # (20 menit)
  gaming = 50,            # 50 menit
  bersih_rumah = 20,      # 20 menit
  belanja = 15,           # 15 menit
  ngopi = 10,             # 10 menit
  baca_buku = 20,         # 20 menit
  jalan_jalan = 20,       # 20 menit
  merenung = 5,           # 5 menit
  family_time = 40,       # 40 menit
  metime = 15             # 15 menit
)

total_time <- sum(unlist(activity))
length_activity <- length(activity)
print(paste("Total waktu aktivitas dalam sehari (menit):", total_time))
total_time_in_hours <- total_time / 60
print(paste("Total waktu aktivitas dalam sehari (jam):", total_time_in_hours))
print(paste("Jumlah jenis aktivitas:", length_activity))

vector_time <- unlist(activity)
print(vector_time)
matrix_data <- matrix(nrow=4, ncol=5)

# Mengisi data activity , angkanya saja ke dalam matrix
matrix_data[,] <- vector_time[1:20]
print("Matrix aktivitas (menit):")
print(matrix_data)

# mencari nilai statistiknya
minimum <- min(vector_time)
maximum <- max(vector_time)
rata_rata <- mean(vector_time)
median_value <- median(vector_time)

cat("Statistik Waktu Aktivitas (menit):\n")
cat("Minimum:", minimum, "\n")

# aktivitas minimum :
min_activities <- names(activity)[which(vector_time == minimum)]
cat("Nama Aktivitas:", paste(min_activities, collapse=", "), "\n")


cat("Maksimum:", maximum, "\n")
# aktivitas maksimum :
max_activities <- names(activity)[which(vector_time == maximum)]
cat("Nama Aktivitas:", paste(max_activities, collapse=", "), "\n")


cat("Rata-rata Aktivitas:", rata_rata, "\n")

cat("Median:", median_value, "\n")
