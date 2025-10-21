x <- 5.89
# class(x)

y <- 3.0
# class(y)

is.numeric(y)
# is.integer(y)

jurusan <- "Statistika"
# class(jurusan)
# mode(jurusan)
# length(jurusan)
# nchar(jurusan)

matrix1 <- matrix(1:4, nrow=3, ncol=4)
# print(matrix1)

matrix2 <- matrix(1:12, nrow=3, ncol=4, byrow=TRUE)
# print(matrix2)


# read data dari file .csv
data_mahasiswa <- read.csv("data_mahasiswa.csv")
# print(data_mahasiswa)

# head(data_mahasiswa)
# str(data_mahasiswa)
# print(data_mahasiswa)
