### Tugas 2 Sistem Operasi

```
Nama  : Rudi Setiawan
NIM   : 055318532

```

---

## Soal 1

### round robin dengan quantum 2

Waktu 0:

- P1 datang, tidak ada antrian, P1 akan langsung dieksekusi

Waktu 1:

- P1 masih berjalan
- P2 datang, masuk antrian
- Antrian: [P1:4, P2:4]

Waktu 2:

- P1 selesai quantum 5-2 = 3, P1:3
- Antrian: [P1:3, P2:4]

Waktu 3:

- P2 dijalankan
- P3 datang, masuk antrian
- Antrian: [P1:3, P2:3, P3:3]

Waktu 4:

- P2 selesai quantum 4-2 = 2, P2:2
- Antrian: [P1:3, P2:2, P3:3]

Waktu 5:

- P3 dijalankan
- P4 datang, masuk antrian
- Antrian: [P1:3, P2:2, P3:2, P4:1]

Waktu 6:

- P3 selesai quantum 3-2 = 1, P3:1
- Antrian: [P1:3, P2:2, P3:1, P4:1]

Waktu 7:

- P4 dijalankan
- P4 selesai quantum 1-1 = 0, P4:0 (selesai)
- Antrian: [P1:3, P2:2, P3:1, P4:0]

Waktu 8:

- P1 dijalankan karena kembali ke awal antrian
- Antrian: [P1:2, P2:2, P3:1]

Waktu 9:

- P1 selesai quantum 3-2 = 1, P1:1
- Antrian: [P1:1, P2:2, P3:1]

Waktu 9:

- P2 dijalankan
- Antrian: [P1:1, P2:1, P3:1]

Waktu 10:

- P2 selesai quantum 2-2 = 0, P2:0 (selesai)
- Antrian: [P1:1, P2:0, P3:1]

Waktu 11:

- P3 dijalankan
- P3 selesai quantum 1-1 = 0, P3:0 (selesai)
- Antrian: [P1:1, P2:0, P3:0]

Waktu 12:

- P1 dijalankan
- P1 selesai quantum 1-1 = 0, P1:0 (selesai)
- Antrian: [P1:0, P2:0, P3:0]

### Gantt Chart

```
| P1 | P2 | P3 | P4 | P1 | P2 | P3 | P1 |
0    2    4    6    7    9   11   12   13
```

Completion Time:

```
P1 = 13
P2 = 11
P3 = 12
P4 = 7
```

### Perhitungan Waktu

Waiting time:
Waiting Time = Completion Time - Arrival Time - Burst Time

```
P1 = 13 - 0 - 5 = 8
P2 = 11 - 1 - 4 = 6
P3 = 12 - 3 - 3 = 6
P4 = 7 - 5 - 1 = 1
```

Turnaround time:
Turnaround Time = Completion Time - Arrival Time

```
P1 = 13 - 0 = 13
P2 = 11 - 1 = 10
P3 = 12 - 3 = 9
P4 = 7 - 5 = 2
```

Response time:
Response Time = Waktu pertama kali dieksekusi

```
P1 = 0
P2 = 2
P3 = 4
P4 = 6
```

### Table

| Process | Arrival Time | Burst Time | Completion Time | Turnaround Time | Waiting Time | Response Time |
| ------- | ------------ | ---------- | --------------- | --------------- | ------------ | ------------- |
| P1      | 0            | 5          | 13              | 13              | 8            | 0             |
| P2      | 1            | 4          | 11              | 10              | 6            | 2             |
| P3      | 3            | 3          | 12              | 9               | 6            | 4             |
| P4      | 5            | 1          | 7               | 2               | 1            | 6             |
| Average |              |            |                 | 8.5             | 5.25         | 3             |

```
Rata-rata Turnaround Time = (13 + 10 + 9 + 2) / 4 = 8.5
Rata-rata Waiting Time = (8 + 6 + 6 + 1) / 4 = 5.25
Rata-rata Response Time = (0 + 2 + 4 + 6) / 4 = 3
```

---

## Soal 2

dapat diidentifikasi bahwa terjadi deadlock antara Budi dan Andi.
Deadlock terjadi karena memenuhi 4 kondisi berikut:

1. **Mutual Exclusion**: Pensil dan penghapus hanya bisa digunakan oleh satu orang pada satu waktu
2. **Hold and Wait**: Budi memegang pensil sambil menunggu penghapus, Andi memegang penghapus sambil menunggu pensil
3. **No Preemption**: Tidak ada yang bisa memaksa Budi/Andi untuk melepaskan alat tulis yang sudah mereka pegang
4. **Circular Wait**: Budi menunggu Andi dan Andi menunggu Budi (siklus tertutup)

### Cara Melakukan Proses Pemberhentian (Deadlock Resolution)

Ada beberapa metode yang dapat diterapkan untuk mengatasi deadlock ini:

### Hentikan Semua Proses Deadlock

- perintahkan Budi dan Andi untuk mengembalikan semua alat tulis pensil dan penghapus
- Budi dan Andi memulai dari awal dengan urutan yang berbeda

ini bisa memberhentikan deadlock tapi harus mengulang proses dari awal

### Bisa juga menghentikan satu proses saja

Pilih salah satu contoh Andi untuk mengembalikan penghapus
Budi dapat melanjutkan menggunakan pensil dan penghapus
setelah budi selesai andi dapat menggunakan kedua alat tulis

ini lebih efisien daripada menghentikan semua dan memulai dari awal

### Bisa juga menggunakan metode timeout

seperti memberikan batas waktu tunggu contohnya 2 menit.

jika dalam 2 menit tidak mendapatkan alat tulis kedua, kembalikan alat pertama .
tunggu beberapa saat dengan random delay sebelum mencoba meminjam kembali
ini mencegah keduanya minjam saat yang bersamaan

1. Budi sudah memegang pensil, menunggu penghapus max 2 menit
2. Jika tidak dapat penghapus, Budi kembalikan pensil
3. Andi dapat menggunakan pensil + penghapus
4. Setelah Andi selesai, Budi menggunakan kedua alat tulis

---

## Soal 3

Konsep yang cocok digunakan untuk permalasahan tersebut adalah Memori Virtual (Virtual Memory) untuk mengatasi masalah batasan memori fisik dengan cara memanfaatkan ruang kosong pada secondary memory seperti disk menjadikannya sebagai alamat virtual memory.

Tujuan dari virtual memory adalah :

1. Memungkinkan eksekusi program yang ukurannya lebih besar daripada memory fisik yang tersedia
2. memungkinkan lebih banyak program untuk berjalan secara bersamaan

virtual memory adalah teknik memisahkan antara memori logis dan memori fisik.

virtual memory melakukan pemisahan dengan menaruh memori logis ke disk sekunder dan hanya membawa halaman yang diperlukan ke memori utama. teknik ini mejadikan seolah-olah ukuran memori fisik yang dimiliki lebih besar dari yang sebenarnya dengan menempatkan keseluruhan program di disk sekunder dan membawa halaman-halaman yang diperlukan ke memori fisik.
Jika proses yang sedang berjalan membutuhkan instruksi atau data yang terdapat pada suatu halaman tertentu, maka halaman tersebut akan dicari di memori utama. Jika halaman yang diinginkan tidak ada maka akan dicari di disk.

Data atau instruksi yang tidak sedang digunakan secara aktif dalam RAM akan dipindahkan sementara ke ruang disk ini, yang sering disebut paging file atau swap space.

Demand Paging

atau permintaan pemberian halaman adalah salah satu implementasi virtual memory yang paling umum digunakan.
prinsipnya hampir sama dengan permintaan halaman (paging) hanya saja dalam (page) tidak akan dibawa ke dalam memori fisik sampai ia benar-benar diperlukan.
