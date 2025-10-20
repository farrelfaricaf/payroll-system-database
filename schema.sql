CREATE TABLE Ref_PTKP (
  Kode_PTKP VARCHAR(5) PRIMARY KEY,
  Keterangan VARCHAR(100),
  Nilai_PTKP DECIMAL(15,2)
);

CREATE TABLE Tunjangan (
  ID_Tunjangan INT PRIMARY KEY,
  Tunjangan_Jabatan DECIMAL(12,2),
  Tunjangan_Transport DECIMAL(12,2),
  Tunjangan_Makan DECIMAL(12,2)
);

CREATE TABLE Jabatan (
  ID_Jabatan INT PRIMARY KEY,
  Nama_Jabatan VARCHAR(100),
  Gaji_Pokok DECIMAL(12,2),
  ID_Tunjangan INT,
  FOREIGN KEY (ID_Tunjangan) REFERENCES Tunjangan(ID_Tunjangan)
);

CREATE TABLE Karyawan (
  ID_Karyawan INT PRIMARY KEY,
  Nama_Depan VARCHAR(50), 
  Nama_Belakang VARCHAR(50),
  Status VARCHAR(20),
  Alamat VARCHAR(150),
  Kota VARCHAR(100),
  Kode_Pos VARCHAR(10), 
  ID_Jabatan INT,
  Kode_PTKP VARCHAR(5),
  FOREIGN KEY (ID_Jabatan) REFERENCES Jabatan(ID_Jabatan),
  FOREIGN KEY (Kode_PTKP) REFERENCES Ref_PTKP(Kode_PTKP)
);

CREATE TABLE Absensi (
  ID_Absensi INT PRIMARY KEY,
  ID_Karyawan INT,
  Tanggal DATE,
  Status_Absensi VARCHAR(10),
  FOREIGN KEY (ID_Karyawan) REFERENCES Karyawan(ID_Karyawan)
);

CREATE TABLE Lembur (
  ID_Lembur INT PRIMARY KEY,
  ID_Karyawan INT,
  Jumlah_Jam INT,
  Upah_Lembur DECIMAL(12,2),
  Tanggal DATE,
  FOREIGN KEY (ID_Karyawan) REFERENCES Karyawan(ID_Karyawan)
);

CREATE TABLE Riwayat_Gaji (
  ID_Gaji INT PRIMARY KEY,
  ID_Karyawan INT,
  Periode DATE,
  Gaji_Pokok DECIMAL(12,2),
  Tunjangan DECIMAL(12,2),
  Lembur DECIMAL(12,2),
  Potongan DECIMAL(12,2),
  Pajak DECIMAL(12,2),
  Total_Bersih DECIMAL(12,2), 
  FOREIGN KEY (ID_Karyawan) REFERENCES Karyawan(ID_Karyawan)
);