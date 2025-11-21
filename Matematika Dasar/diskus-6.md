## 1. Diketahui fungsi f(x)=x²+1 Tentukan domain, kodomain, dan range dari fungsi tersebut

Diberikan fungsi: **f(x) = x² + 1**

### 1. Domain

Domain adalah himpunan semua nilai x yang mungkin dimasukkan ke dalam fungsi.

Untuk fungsi f(x) = x² + 1:

- x² terdefinisi untuk semua bilangan real
- x² + 1 juga terdefinisi untuk semua bilangan real

**Domain = ℝ (semua bilangan real)** atau dapat ditulis **(-∞, ∞)**

### 2. Kodomain

Kodomain adalah himpunan semua nilai y yang mungkin menjadi hasil fungsi (biasanya ditentukan dalam soal).

Jika tidak disebutkan secara spesifik, kodomain umumnya adalah:
**Kodomain = ℝ (semua bilangan real)**

### 3. Range

Range adalah himpunan semua nilai y yang benar-benar dihasilkan oleh fungsi.

Analisis:

- Nilai minimum x² adalah 0 (saat x = 0)
- Sehingga nilai minimum f(x) = 0 + 1 = 1
- Ketika x bertambah besar (positif atau negatif), x² akan bertambah besar
- Maka f(x) juga bertambah besar tanpa batas

**Range = [1, ∞)** atau **{y ∈ ℝ | y ≥ 1}**

## Kesimpulan:

- **Domain**: ℝ atau (-∞, ∞)
- **Kodomain**: ℝ (jika tidak disebutkan)
- **Range**: [1, ∞) atau {y | y ≥ 1}

## 2. Gambar grafik fungsi dan tentukan arah buka parabola, titik puncak, dan titik potong sumbu-x.

f(x) = -x^2 + 2x + 3

## 3

```
Diketahui f(x)=2x−1x+3f(x) = \frac{2x - 1}{x + 3} dan g(x)=x+2x−1g(x) = \frac{x + 2}{x - 1}
Tentukan:
a. (f∘g)(x)(f \circ g)(x)(f∘g)(x)
b. (g∘f)(x)(g \circ f)(x)(g∘f)(x)
```

Untuk menyelesaikan soal ini, kita akan menghitung komposisi fungsi f dan g.

### a. Menghitung (f∘g)(x)

(f∘g)(x) = f(g(x))
Substitusi g(x) ke dalam f(x):
g(x) = (x + 2)/(x - 1)
Maka,
f(g(x)) = f((x + 2)/(x - 1)) = (2((x + 2)/(x - 1)) - 1) / (((x + 2)/(x - 1)) + 3)
Selanjutnya, kita akan menyederhanakan ekspresi ini.
Numerator:
2((x + 2)/(x - 1)) - 1 = (2(x + 2) - (x - 1)) / (x - 1) = (2x + 4 - x + 1) / (x - 1) = (x + 5) / (x - 1)
Denominator:
((x + 2)/(x - 1)) + 3 = ((x + 2) + 3(x - 1)) / (x - 1) = (x + 2 + 3x - 3) / (x - 1) = (4x - 1) / (x - 1)
Jadi,
(f∘g)(x) = ((x + 5) / (x - 1)) / ((4x - 1) / (x - 1)) = (x + 5) / (4x - 1)

### b. Menghitung (g∘f)(x)

```
(g∘f)(x) = g(f(x))
Substitusi f(x) ke dalam g(x):
f(x) = (2x - 1)/(x + 3)
Maka,
g(f(x)) = g((2x - 1)/(x + 3)) = (((2x - 1)/(x + 3)) + 2) / (((2x - 1)/(x + 3)) - 1)
Selanjutnya, kita akan menyederhanakan ekspresi ini.
Numerator:
((2x - 1)/(x + 3)) + 2 = ((2x - 1) + 2(x + 3)) / (x + 3) = (2x - 1 + 2x + 6) / (x + 3) = (4x + 5) / (x + 3)
Denominator:
((2x - 1)/(x + 3)) - 1 = ((2x - 1) - (x + 3)) / (x + 3) = (2x - 1 - x - 3) / (x + 3) = (x - 4) / (x + 3)
Jadi,
(g∘f)(x) = ((4x + 5) / (x + 3)) / ((x - 4) / (x + 3)) = (4x + 5) / (x - 4)
```

## Kesimpulan:

a. (f∘g)(x) = (x + 5) / (4x - 1)
b. (g∘f)(x) = (4x + 5) / (x - 4)
