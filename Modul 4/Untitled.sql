CREATE TABLE `Pemilik` (
  `ID_Pemilik_Toko` varchar(255) PRIMARY KEY,
  `Profil_Bisnis` varchar(255),
  `Nama_Depan` varchar(255),
  `Nama_Tengah` varchar(255),
  `Nama_Belakang` varchar(255),
  `Metode_Pengiriman` varchar(255),
  `Produk_yg_Dijual` varchar(255)
);

CREATE TABLE `Produk` (
  `Nama_Produk` varchar(255) PRIMARY KEY,
  `N_Kategori` varchar(255),
  `Stok_Barang` int,
  `Kategori_Produk` varchar(255),
  `Deskripsi_produk` varchar(255),
  `Diskon_Produk` varchar(255),
  `Harga_Produk` int
);

CREATE TABLE `Pelanggan` (
  `Riwayt_Pmbelian` varchar(255) PRIMARY KEY,
  `Nama_Depan` varchar(255),
  `Nama_Tengah` varchar(255),
  `Nama_Belakang` varchar(255),
  `Alamat` varchar(255),
  `No_Tlpon` int,
  `No_Resi` int
);

CREATE TABLE `Pengiriman` (
  `No_Resi` int PRIMARY KEY,
  `Jasa_Pngrimn` varchar(255),
  `Lok_Pengiriman` varchar(255),
  `Tnggl_Pngriman` int,
  `ID_Lokasi` int,
  `Tanggl_Pmsanan` int
);

CREATE TABLE `Tanggl_Pngiriman` (
  `Tanggl_Pemsanan` int PRIMARY KEY,
  `Biaya_Pngriman` int,
  `Med_Pngriman` varchar(255)
);

CREATE TABLE `Lokasi_Pengiriman` (
  `ID_Lokasi` int PRIMARY KEY,
  `Nama_lokasi` varchar(255)
);

CREATE TABLE `Kategori_Produk` (
  `N_Kategori` varchar(255) PRIMARY KEY,
  `Deskripsi` varchar(255),
  `Harga` int
);

CREATE TABLE `Pembelian` (
  `Deskripsi_Produk` varchar(255),
  `Riwyt_Pmbian` varchar(255)
);

ALTER TABLE `Produk` ADD FOREIGN KEY (`N_Kategori`) REFERENCES `Kategori_Produk` (`N_Kategori`);

ALTER TABLE `Pelanggan` ADD FOREIGN KEY (`No_Resi`) REFERENCES `Pengiriman` (`No_Resi`);

ALTER TABLE `Pengiriman` ADD FOREIGN KEY (`ID_Lokasi`) REFERENCES `Lokasi_Pengiriman` (`ID_Lokasi`);

ALTER TABLE `Pengiriman` ADD FOREIGN KEY (`Tanggl_Pmsanan`) REFERENCES `Tanggl_Pngiriman` (`Tanggl_Pemsanan`);

ALTER TABLE `Kategori_Produk` ADD FOREIGN KEY (`Harga`) REFERENCES `Produk` (`Harga_Produk`);

ALTER TABLE `Pembelian` ADD FOREIGN KEY (`Deskripsi_Produk`) REFERENCES `Produk` (`Deskripsi_produk`);

ALTER TABLE `Pembelian` ADD FOREIGN KEY (`Riwyt_Pmbian`) REFERENCES `Pelanggan` (`Riwayt_Pmbelian`);
