Nama: Rudi Setiawan
NIM: 055318532

---

## Tuton Sesi 2 - Topik Diskusi Ke 1

Berikan 3 buah contoh implementasi operasi dasar pada basis data pada sistem arsip di sebuah perguruan tinggi. Jelaskan kendala yang muncul terkait contoh implementasi operasi dasar tersebut.

---

berikut contoh implementasi operasi dasar pada basis data untuk sistem arsip di perguruan tinggi

### operasi CREATE

untuk membuat table yang diperlukan untuk basis data dalam sistem

contoh2 table:

```
users
roles
departments [fakultas/ jurusan di perguruan tinggi]
archives [table utama untuk mencatat pengarsipan]
archive_files [table penunjang archives untuk menempatkan file2 yang relevan pada record arsip]
archive_histories [table penunjang archives untuk mencatat version [jika ada perubahan pada record arsip]
```

#### Implementasi

ketika sistem baru akan dibuat dan rancangan struktur tabel sudah disetujui oleh keseluruhan team, maka langkah awal dalam mengembangkan basis data adalah melakukan operasi CREATE pada basis data.

contoh:

```
CREATE TABLE users (
id SERIAL PRIMARY KEY,
role_id INTEGER,
name VARCHAR(100) NOT NULL,
phone_number VARCHAR(20),
email VARCHAR(200) UNIQUE NOT NULL,
password VARCHAR(255) NOT NULL,
email_verified_at TIMESTAMP(0) NULL,
created_at TIMESTAMP(0) DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP(0) DEFAULT CURRENT_TIMESTAMP,
deleted_at TIMESTAMP(0) NULL
);
```

masalah yang mungkin timbul dalam pengoperasian CREATE:

#### tipe data yang tidak sesuai

contohnya:

pembuatan kolom created_at seharusnya memakai tipe data TIMESTAMP namun ditulis dengan VARCHAR
maka untuk kedepannya akan sulit dilakukan pencarian berdasarkan kolom `created_at` dengan rentang waktu yang dimaksud.

---

### operasi INSERT

tabel yang sudah dibuat tentu nantinya akan diisi dengan record ketika sistem berjalan.

contoh kasus:
user A sebagai admin sedang melakukan penambahan arsip kedalam sistem, maka sistem akan melakukan pencatatan record kedalam basis data.

```
INSERT INTO archives (
  archive_code,
  title,
  description,
  category_id,
  department_id,
  document_number,
  document_date,
  received_date,
  created_by,
  updated_by,
  created_at,
  updated_at,
  deleted_at
) VALUES (
  'ARS/2025/001',
  'SK Pengangkatan Dosen Tetap',
  'Surat keputusan pengangkatan dosen tetap Fakultas Teknik Universitas X.',
  1,
  2,
  '123/UNIV/FT/2025',
  '2025-01-10',
  '2025-01-15',
  1,
  1,
  NOW(),
  NOW(),
  NULL
);
```

masalah yang mungkin timbul

yang mungkin muncul ketika melakukan operasi insert ketika kolom pada table tidak boleh null, namun kita memaksa memasukan null pada kolom tersebut, maka operasi INSERT akan error

kesalahan memberikan value pada kolom.

pada contoh diatas kolom `created_by` diisi dengan nilai `1`.
nilai `1` seharusnya adalah ID pada user yang sedang login. tapi apabila pengembang melakukan kesalahan pada penulisan perintah untuk INSERT dengan memasukan nilai integer lain pada kolom tersebut, katakanlah apabila pengembang salah mengambil nilai dari variabel lain yang membuat operasi INSERT memasukan nilai `413` pada kolom `created_by`. Maka yang akan terjadi adalah suatu saat akan melakukan pencarian berdasarkan pembuat arsip tersebut berdasarkan kondisi `created_by = 1`, record ini tidak akan ditemukan.
maka dari itu harus hati-hati dalam pemberian nilai pada operasi INSERT.

---

### operasi UPDATE

untuk melakukan ubahan pada record yang sudah tercatat.

contoh:

```
UPDATE archives
SET
title = 'SK Pengangkatan Dosen Tetap Fakultas Teknik (Revisi)',
description = 'Revisi surat keputusan pengangkatan dosen tetap tahun 2025.',
updated_by = 2,
updated_at = NOW()
WHERE id = 1;
```

pada query diatas, menyebabkan tabel archives dengan ID 1 telah dilakukan update oleh user 2

masalah yang mungkin timbul

Mengupdate record tanpa adanya kondisi.
Pada query diatas, `... WHERE id = 1` itu sangat penting. karena apabila pengembang lupa menulis kondisi WHERE tersebut maka perintah update tersebut akan menganggap perintah UPDATE akan berlaku ke seluruh table `archives` dan menyebabkan seluruh data `archive` menjadi rusak

Terima kasih.
