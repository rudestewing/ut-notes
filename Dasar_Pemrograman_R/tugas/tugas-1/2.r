prodi <- c("Matematika", "Statistika", "Biologi")
asal_daerah <- c("Jakarta", "Bogor", "Bandung")
usia <- c(22,26)

df <- expand.grid(prodi = prodi, asal_daerah = asal_daerah, usia = usia)
print(df)
