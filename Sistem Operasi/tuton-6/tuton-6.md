Dalam kehidupan sehari-hari tentunya kita membutuhkan sebuah penyimpanan data,
salah satu penyimpanan data pada komputer biasanya disimpan dalam sebuah berkas.

## Jelaskan apa yang dimaksud dengan berkas?

Berkas adalah kumpulan dari berbagai macam data yang saling berhubungan dan diberi nama pada perangkat penyimpanan. Berkas dapat menyimpan berbagai macam tipe data seperti teks , grafik ,database, suara, dan sebagainya. Struktur dari berkas tergantung dari tipe berkas tersebut.

## Jelaskan sistem berkas pada windows dan unix?

### Windows

sistem berkas pada windows dibagi menjadi 2 keluarga besar, Windows 9x dan Windows NT (New Technology). Windows 9x menggunakan sistem berkas FAT (File Allocation Table) sedangkan Windows NT menggunakan sistem berkas NTFS (New Technology File System). Sistem berkas FAT memiliki beberapa varian seperti FAT12, FAT16, dan FAT32. Sedangkan NTFS memiliki fitur yang lebih canggih seperti dukungan untuk file yang lebih besar, keamanan yang lebih baik, dan kemampuan untuk mengelola ruang penyimpanan dengan lebih efisien.

**Direktori C:\WINDOWS**

directory yang menyimpan library, driver, registry, dan program-program penting lain untuk sistem

**C:\Program Files**

direktori yang menyimpan program-program aplikasi yang diinstal pada sistem operasi Windows.

**C:\My Documents**

direktori yang digunakan untuk menyimpan dokumen-dokumen pribadi user

### Sistem Berkas pada UNIX

posisi directory akan ditempatkan di root
directory root atau dikenal dengan symbol "/"

directory yang umum pada UNIX yaitu:

**"/" root directory**

terletak pada level teratas struktur directory UNIX
biasanya root ini diberi tanda "/".

directory ini adalah tempat penyimpanan semua file-file pada UNIX

termasuk directory user juga bisa diakses dari root

**"/bin"**

berisi program-program penting yang menjaga sistem operasi supaya dapat berjalan dengan baik. directory ini dapat ditemukan perintah-perintah navigasi, program-program shell, perintah pencarian dan sebagainya.

bin adalah singkatan dari kata "binary". Pada sistem operasi UNIX, binary adalah berkas yang dapat dieksekusi. Sebagian besar dari perintah UNIX merupakan binary.

Perintah-perintah tersebut merupakan program-program kecil yang dapat dieksekusi oleh user.

Ada beberapa perintah yang disebut perintah built-in, dimana fungsi dikendalikan oleh program shell sehingga perintah tidak beroperasi sebagai binary yang terpisah.

biasanya directory bin ini terhubung dengan dengan directory lain dinamakan "/usr/bin" yang biasanya lokasi sebenarnya dari binary-binary dari user yang ada.

**"/dev"**

berisi berkas-berkas alat atau alat untuk I/O.
sistem operasi menganggap semu ahal seperti monitor, CD-ROM, printer dan lainnya sebagai berkas saja. Jika UNIX memerlukan perangkat tersebut, maka UNIX akan mencarinya di dev

**"/etc"**

directory ini berisi beberapa konfigurasi berkas pengguna sistem. dan merupakan berkas yang ditunjuk sistem sebagai operasi normal seperti berkas kata sandi, pesan untuk hari ini, dan sebagainya.

**"/lib"**

berisi libraries yang dipakai bersama (shared). merupakan software rutin yang digunakan di lebih dari satu bagian dari sistme operasi.

Aplikasi-aplikasi di UNIX biasanya memeriksa directory /lib untuk mencari libraries yang dibutuhkan.

**"/sbin"**

seperti bin, tapi berhubungan dengan fungsi-dungsi sistem administrasi pada operasi UNIX. ini tidak digunakan oleh user, tapi digunakan agar komputer dapat berjalan dengan efisien.

**"/usr"**

directory ini berisi berkas yang diakses oleh user biasa (bukan root).
directory ini mirip dengan root tapi terbatas hanya untuk user biasa.
beberpa directory yang terdapat dalam usr berhubungan dengan directory yang ada di root.

**"/var"**

berisi bermacam-macam (vary), perubahan data dalam sistem yang aktif akan sangat cepat, data seperti ini ada dalam waktu yang singkat, karena sifatnya yang selalu berubah, tidak mungkin disimpan dalam directory /etc.

oleh karena itu data seperti itu disimpan dalam var

secara garis besar, UNIX terbagi menjadi dua
yaitu sistem berkas dengan fasilitas jurnaling dan yang tidak memiliki fasilitas tersebut.

## Jelaskan perbandingan sistem berkas pada windows dan unix?

sistem berkas UNIX beda dengan Windows (DOS).

lebih mudah diatur dan lebih fleksibel daripada DOS.

**Penamaan**

penamaan berkas sistem pada UNIX dan windows pun berbeda.
Windows berfokus untuk memudahkan pengguna maka mereka mengubah nama menjadi nama yang lebih mudah dipahami bagi user.

**Case Sensitive**

pada UNIX menggunakan case sensitive artinya huruf besar dan kecil dibedakan.

Windows tidak menggunakan case sensitive, artinya huruf besar dan kecil tidak dibedakan.

**Struktur Direktori**
UNIX tidak menggunakan huruf seperti windows, (C:, D: ) untuk menandai drive penyimpanan.
UNIX menggunakan struktur direktori tunggal (single directory structure) yang dimulai dari root ( / ) dan semua direktori serta berkas berada di bawahnya.
