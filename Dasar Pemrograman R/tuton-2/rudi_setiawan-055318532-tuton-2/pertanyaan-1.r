# a=[5 6 7 8 9 10]
# menggunakan ":" untuk membuat deret berurutan teratur
a <- 5:10
print('a:')
print(a)

# b=[10 8 6 4 2]
# menggunakan seq() untuk membangun deret bilangan dengan interval tertentu
# dari 10 ke 2 dengan selisih -2
b <- seq(10, 2, by=-2)
print('b:')
print(b)

# c=[0.0 0.2 0.4 0.6 0.8 1.0]
# menggunakan seq() lagi untuk membuat deret dari 0 ke 1 dengan selisih 0.2
c <- seq(0, 1, by=0.2)
print('c:')
print(c)

# d=[3 3 3 7 7 7 9 9]
# menggunakan rep() untuk mengulang elemen tertentu
d <- c(rep(3, 3), rep(7, 3), rep(9, 2))
print('d:')
print(d)

# e=[1 2 1 2 1 2 1 2]
# menggunakan rep() untuk mengulang elemen dengan jumlah yang sama
# dengan argumen times
e <- rep(c(1,2), times=4)
print('e:')
print(e)
