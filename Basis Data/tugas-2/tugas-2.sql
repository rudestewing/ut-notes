-- test hello hello
-- database rumahsakit

-- Nama   : Rudi Setiawan
-- NIM    : 055318532


create table admin (
  id_admin INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nama_admin VARCHAR(255),
  waktu_jaga DATE
);

create table pasien (
  id_pasien INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nama_pasien VARCHAR(255),
  jenis_kelamin ENUM("L", "P") NOT NULL,
  alamat_pasien TEXT
)

create table dokter (
  id_dokter INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nama_dokter VARCHAR(255),
  alamat_dokter TEXT,
  no_hp VARCHAR(15),
  spesialis VARCHAR(100),
  tanggal_lahir DATE NOT NULL,
  waktu_kerja DATE
)


create table daftar (
  id_daftar INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_admin INT NOT NULL,
  id_pasien INT NOT NULL
)


create table dokter_admin (
  id_dokter_admin INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_admin INT NOT NULL,
  id_dokter INT NOT NULL
);


-- id_{nama table}

create table pasien_dokter (
  id_pasien_dokter INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_pasien INT NOT NULL,
  id_dokter INT NOT NULL,
  waktu_periksa DATETIME NOT NULL,
  resep TEXT
);
