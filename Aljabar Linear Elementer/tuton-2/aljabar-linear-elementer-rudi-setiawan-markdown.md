# Operasi Baris Elementer (OBE) dan Eliminasi Gauss-Jordan

```
Nama  : Rudi Setiawan
NIM   : 055318532
```

## 3 Cara Melakukan OBE (Operasi Baris Elementer)

1. **Pertukaran baris**
2. **Perkalian 1 baris dengan konstanta tak nol (≠ 0)**
3. **Penjumlahan dari suatu baris dengan konstanta tak nol (≠ 0) dengan baris yang lain**

## Contoh Matrix 3×3 dan Implementasi Operasi Baris Elementer

Untuk membentuk eliminasi Gauss-Jordan, harus memenuhi syarat **Matrix Eselon Baris Tereduksi (MEBT)** atau **Reduced Row Echelon Form (RREF)**.

### Diketahui Matrix A:

$$
A = \begin{bmatrix}
2 & -4 & 6 \\
3 & 5 & -2 \\
-4 & 2 & 3
\end{bmatrix}
$$

### Langkah 1: Membuat Leading 1 pada Baris 1 Kolom 1

$B_{11}$ harus bernilai 1. Maka, $B_1 \times \frac{1}{2}$

Perhitungan:

- $B_{11} = 2 \times \frac{1}{2} = 1$
- $B_{12} = -4 \times \frac{1}{2} = -2$
- $B_{13} = 6 \times \frac{1}{2} = 3$

$$
\begin{bmatrix}
1 & -2 & 3 \\
3 & 5 & -2 \\
-4 & 2 & 3
\end{bmatrix}
$$

$B_{11}$ sudah bernilai 1.

### Langkah 2: Membuat $B_{21} = 0$

Sekarang $B_{21}$ harus bernilai 0. Maka, bisa dilakukan dengan cara $B_2 - 3 \times B_1$

Perhitungan:

- $B_{21} = B_{21} - 3 \times B_{11} = 3 - 3 \times 1 = 3 - 3 = 0$
- $B_{22} = B_{22} - 3 \times B_{12} = 5 - (3 \times -2) = 5 - (-6) = 5 + 6 = 11$
- $B_{23} = B_{23} - 3 \times B_{13} = -2 - (3 \times 3) = -2 - 9 = -11$

$$
\begin{bmatrix}
1 & -2 & 3 \\
0 & 11 & -11 \\
-4 & 2 & 3
\end{bmatrix}
$$

### Langkah 3: Membuat $B_{31} = 0$

Lanjut $B_{31}$ harus bernilai 0. Maka bisa dilakukan dengan cara $B_3 + 4 \times B_1$

Perhitungan:

- $B_{31} = B_{31} + 4 \times B_{11} = -4 + 4 \times 1 = -4 + 4 = 0$
- $B_{32} = 2 + 4 \times B_{12} = 2 + 4 \times (-2) = 2 + (-8) = 2 - 8 = -6$
- $B_{33} = 3 + 4 \times B_{13} = 3 + 4 \times 3 = 3 + 12 = 15$

$$
\begin{bmatrix}
1 & -2 & 3 \\
0 & 11 & -11 \\
0 & -6 & 15
\end{bmatrix}
$$

### Langkah 4: Membuat $B_{22} = 1$

Selanjutnya buat $B_{22}$ bernilai 1. Bisa dengan cara perkalian dengan $\frac{1}{11}$ = $B_2 \times \frac{1}{11}$

Perhitungan:

- $B_{21} = 0 \times \frac{1}{11} = 0$
- $B_{22} = 11 \times \frac{1}{11} = \frac{11}{11} = 1$
- $B_{23} = -11 \times \frac{1}{11} = \frac{-11}{11} = -1$

$$
\begin{bmatrix}
1 & -2 & 3 \\
0 & 1 & -1 \\
0 & -6 & 15
\end{bmatrix}
$$

### Langkah 5: Membuat $B_{32} = 0$

Selanjutnya buat $B_{32}$ menjadi 0. Bisa dengan cara $B_3 + 6 \times B_2$

$B_{31}$ tetap 0.

Perhitungan:

- $B_{32} = B_{32} + 6 \times B_{22} = -6 + 6 \times 1 = -6 + 6 = 0$
- $B_{33} = B_{33} + 6 \times B_{23} = 15 + 6 \times (-1) = 15 + (-6) = 15 - 6 = 9$

$$
\begin{bmatrix}
1 & -2 & 3 \\
0 & 1 & -1 \\
0 & 0 & 9
\end{bmatrix}
$$

### Langkah 6: Membuat $B_{33} = 1$

Buat $B_{33}$ menjadi 1. Bisa dengan cara $B_3 \times \frac{1}{9}$

$B_{31}$ tetap 0, $B_{32}$ tetap 0.

Perhitungan:

- $B_{33} = 9 \times \frac{1}{9} = \frac{9}{9} = 1$

$$
\begin{bmatrix}
1 & -2 & 3 \\
0 & 1 & -1 \\
0 & 0 & 1
\end{bmatrix}
$$

### Langkah 7: Membuat $B_{23} = 0$

Selanjutnya membuat $B_{23}$ menjadi 0. Bisa dilakukan dengan cara $B_2 + B_3$

Perhitungan:

- $B_{21} = B_{21} + B_{31} = 0 + 0 = 0$
- $B_{22} = B_{22} + B_{32} = 1 + 0 = 1$
- $B_{23} = B_{23} + B_{33} = -1 + 1 = 0$

$$
\begin{bmatrix}
1 & -2 & 3 \\
0 & 1 & 0 \\
0 & 0 & 1
\end{bmatrix}
$$

### Langkah 8: Membuat $B_{13} = 0$

Selanjutnya buat $B_{13}$ menjadi 0. Bisa dilakukan dengan cara $B_1 - 3 \times B_3$

$B_{11} = 1$

Perhitungan:

- $B_{12} = B_{12} - 3 \times B_{32} = -2 - (3 \times 0) = -2 - 0 = -2$
- $B_{13} = B_{13} - 3 \times B_{33} = 3 - (3 \times 1) = 3 - 3 = 0$

$$
\begin{bmatrix}
1 & -2 & 0 \\
0 & 1 & 0 \\
0 & 0 & 1
\end{bmatrix}
$$

### Langkah 9: Membuat $B_{12} = 0$

Selanjutnya membuat $B_{12}$ menjadi 0. Bisa dengan cara $B_1 + 2 \times B_2$

Perhitungan:

- $B_{11} = B_{11} + 2 \times B_{21} = 1 + 2 \times 0 = 1 + 0 = 1$
- $B_{12} = B_{12} + 2 \times B_{22} = -2 + 2 \times 1 = -2 + 2 = 0$

$$
\begin{bmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & 1
\end{bmatrix}
$$

## Hasil Akhir

**Matrix MEBT atau RREF (Reduced Row Echelon Form)**

Matrix Eselon Baris Tereduksi atau Reduced Row Echelon Form telah berhasil dibentuk menjadi matrix identitas.
