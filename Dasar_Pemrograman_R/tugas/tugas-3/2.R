# membangkitkan data Distribusi Normal dengan banyaknya observasi (n) adalah 150, rataan sebesar 0, dan standar deviasi sebesar 1. Simpan data tersebut dalam format matriks dengan banyaknya kolom adalah 5. Kemudian konversi ke dalam frame data dan beri nama frame data tersebut data_normal.

set.seed(123)  

n <- 150

data_matrix <- matrix(rnorm(n, mean = 0, sd = 1), ncol = 5)

data_normal <- as.data.frame(data_matrix)

print(data_normal)
