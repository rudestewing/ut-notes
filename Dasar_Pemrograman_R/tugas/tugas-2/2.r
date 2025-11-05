nilai <- c(60,67,69,72,74,77,80,83,87,70)
frekuensi <- c(3,5,6,8,9,2,6,8,1,4)

# Lakukan analisis berikut dengan menggunakan R:
# a. Buatlah grafik sebaran (scatter plot) antara nilai dan frekuensinya

pdf("2a-scatter-plot.pdf")
plot(
  nilai,
  frekuensi,
  main="Grafik Sebaran Nilai vs Frekuensi",
  xlab="Nilai Mahasiswa",
  ylab="Frekuensi",
  pch=19,
  col="blue"
)

# b. Buatlah pie chart dari distribusi frekuensi dan boxplot dari nilai mahasiswa!
pdf("2b-pie.pdf")
# Pie Chart
pie(
  frekuensi,
  labels=nilai,
  main="Pie Chart Distribusi Frekuensi",
  col=rainbow(length(frekuensi))
)


pdf("2b-boxplot.pdf")
# Boxplot
boxplot(
  nilai,
  main="Boxplot Nilai Mahasiswa",
  ylab="Nilai",
  col="lightgreen"
)


# d. Buatlah interpretasi berdasarkan hasil grafik tsb !


# Interpretasi:

# Chart ScatterPlot
# menunjukan hubungan antara nilai ujian dengan berapa banyak mahasiswa yang mendapatkan nilai tersebut
# titik yang keatas (sumbu y) merupakan nilai yang diperoleh oleh banyaknya mahasiswa
# semakin keatas semakin tinggi frekuensinya

# titik yang ke kanan (sumbu x) merupakan nilai yang lebih tinggi
# semakin ke kanan semakin tinggi


# Chart Pie
# menunjukkan proporsi frekuensi nilai mahasiswa
# dari pie chart tersebut dapat dilihat nilai mana yang paling banyak diperoleh mahasiswa
# dapat dilihat yang mendapat nilai 74 dan 72, bagian pie nya hampir mirip besar ukurannya
# karena frekuensi nya juga hampir sama yaitu 9 dan 8



# Chart Box Plot
# menunjukkan sebaran nilai mahasiswa
# dari boxplot tersebut dapat dilihat median nilai mahasiswa
# serta rentang nilai yang diperoleh mahasiswa

# pada box hijau tersebut
# batas bawah box disebut Q1 (kuartil pertama)
# garis tengah box disebut median
# batas atas box disebut Q3 (kuartil ketiga)

# garis horizontal di bawah box disebut minimum
# garis horizontal di atas box disebut maksimum
