### Matematika Dasar tuton diskusi - 3

```
Nama  : Rudi Setiawan
NIM   : 055318532
```

---

1. Tentukan konvers, invers, dan kontraoposisi dari implikasi berikut: “Jika Abi rajin berbinis maka ia cepat kaya”!

2. Tunjukkan bahawa kalimat " F : (if P than Q) or (P and not Q)" merupakan kalimat valid dengan menggunakan tabel kebenaran!

---

Jika Abi rajin berbinis maka ia cepat kaya

bisa dijadikan menjadi

```
P: Abi rajin berbisnis
Q: Abi cepat kaya
```

P -> Q

---

### Konverse

Menukar posisi P dan Q:

Q -> P

artinya:

"Jika abi cepat kaya maka ia rajin berbisnis"

---

### Inverse

Membalik nilai kebenaran atau menegasikan keduanya

¬ P -> ¬ Q

artinya:

"Jika abi tidak rajin berbisnis maka abi tidak cepat kaya"

---

### kontraoposisi

Menukar posisi , dan menegasikan keduanya

¬ Q -> ¬ P

artinya:

"Jika abi tidak cepat kaya maka ia tidak rajin berbisnis"

---

Pembuktian F : (if P than Q) or (P and not Q)

<style>
table {
    width: 100% !important;
    table-layout: fixed !important;
    border-collapse: collapse !important;
}
td, th {
    text-align: center !important;
    padding: 8px !important;
    border: 1px solid #ddd !important;
    word-wrap: break-word !important;
}
</style>

|  P  |  Q  | ¬ Q | P → Q | P ∧ ¬ Q | F = (P → Q) ∨ (P ∧ ¬ Q) |
| :-: | :-: | :-: | :---: | :-----: | :---------------------: |
|  T  |  T  |  F  |   T   |    F    |            T            |
|  T  |  F  |  T  |   F   |    T    |            T            |
|  F  |  T  |  F  |   T   |    F    |            T            |
|  F  |  F  |  T  |   T   |    F    |            T            |

kolom "F = (P → Q) ∨ (P ∧ ¬ Q)" selalu bernilai True disetiap kemungkinan nilai P dan Q
maka kalimat F bersifat valid
