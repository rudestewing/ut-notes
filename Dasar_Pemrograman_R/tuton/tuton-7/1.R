set.seed(123)

# data binomial dengan masing-masing 10 percobaan
# probability 0.5
data_vector <- rbinom(50, 10, 0.5)

# mengubah menjadi data matrix dengan kolom 5
data_binomial <- matrix(c(data_vector), ncol=5, byrow = TRUE)

# menampilkan beberapa baris pertama
head(data_binomial, n=3)

total_sukses <- rowSums(data_binomial)

data_binomial <- cbind(data_binomial, matrix(total_sukses, ncol=1, byrow=TRUE))

head(data_binomial, n=1)
print(data_binomial)
