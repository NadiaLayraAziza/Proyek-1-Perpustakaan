-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Des 2020 pada 01.23
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `nim` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jk` enum('Laki-laki','Perempuan') NOT NULL,
  `jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_anggota`
--

INSERT INTO `tb_anggota` (`nim`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jk`, `jurusan`) VALUES
(1631720255, 'Bisri Musthofa', 'Jayapura', '1998-04-14', 'Laki-laki', 'Teknik Mesin'),
(1641720012, 'Zainal Abidin', 'Pontianak', '1998-01-06', 'Laki-laki', 'Teknik Mesin'),
(1731720085, 'Dinda Miftah', 'Banyuwangi', '1999-07-11', 'Perempuan', 'Teknik Kimia'),
(1741720128, 'Putra Candra', 'Semarang', '1998-07-27', 'Laki-laki', 'Teknologi Informasi'),
(1831720015, 'Tita Wijaya', 'Medan', '1997-10-14', 'Perempuan', 'Akuntansi'),
(1831720022, 'Widad Bariroh', 'Malang', '2000-09-04', 'Perempuan', 'Administrasi Niaga'),
(1841720050, 'Krisna Blue', 'Jakarta', '1999-08-05', 'Laki-laki', 'Teknik Elektro'),
(1941720061, 'Spongebob', 'Pasuruan', '2001-03-15', 'Laki-laki', 'Teknik Sipil'),
(2031720128, 'Haris Vriza Milano', 'Bogor', '2002-12-05', 'Laki-laki', 'Teknik Kimia'),
(2041720043, 'Nuril Faizah ', 'Palembang', '2001-05-15', 'Perempuan', 'Teknologi Informasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` varchar(11) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `lokasi` enum('rak1','rak2','rak3') NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`id`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `jumlah_buku`, `lokasi`, `tgl_input`) VALUES
(1, 'Belajar Pemrograman Web', 'Nadia Layra', 'Mediamurah', '2002', '123NBGYE67', 10, 'rak2', '2020-12-16'),
(2, 'Dasar Pemrograman', 'Tita Wijaya', 'Halomedia', '2005', '7349GFK12Y', 15, 'rak1', '2020-12-02'),
(3, 'Basis Data Lanjut', 'Cinderella', 'Mediamurah', '2007', '1205DEY765', 34, 'rak3', '2020-12-27'),
(4, 'Pemrograman Android', 'Natasya Wilona', 'FunMedia', '2000', '512CB76N6Q', 49, 'rak1', '2020-12-10'),
(6, 'Menembus Impian', 'Abidah el Khalieqy', 'Gagas Media', '1997', 'GT45DXC230', 37, 'rak3', '2019-10-14'),
(7, 'Merpati Biru', 'Achmad Munif', 'Grasindo', '2006', '65VEW2309B', 62, 'rak2', '2018-09-18'),
(8, 'Metode Karakterisasi Telaah Fiksi', 'Albertine Minderop', 'Mediamurah', '1998', '97FG54CXS1', 72, 'rak2', '2020-01-06'),
(9, 'Sekeping Tanda', 'Andi Wirambara', 'Gagas Media', '2010', 'HT340WELO5', 48, 'rak2', '2017-10-07'),
(10, 'Beton Non-Pasir ', 'Diarto Trisnoyuwono', 'Graha Ilmu ', '2003', '540DFMB20D', 39, 'rak2', '2017-01-16'),
(11, 'Ilmu Ukur Tanah', 'Slamet Basuki', 'Graha Ilmu ', '1993', '75VF0DS34V', 90, 'rak3', '2013-04-19'),
(12, 'Drainase Perkotaan', 'Wesli ', 'Grasindo', '2006', '608BVW23C4', 17, 'rak2', '2020-12-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tgl_pinjam` varchar(255) NOT NULL,
  `tgl_kembali` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `judul`, `nim`, `nama`, `tgl_pinjam`, `tgl_kembali`, `status`) VALUES
(1, 'Dasar Pemrograman', '1941720061', 'Spongebob', '04-12-2020', '11-12-2020', 'Pinjam'),
(2, 'Basis Data Lanjut', '1841720050', 'Krisna Blue', '07-12-2020', '14-12-2020', 'Kembali'),
(3, 'Pemrograman Android', '1841720050', 'Krisna Blue', '24-12-2020', '31-12-2020', 'Kembali'),
(4, 'Pemrograman Android', '1831720015', 'Tita Wijaya', '24-12-2020', '31-12-2020', 'Kembali'),
(5, 'Basis Data Lanjut', '1831720015', 'Tita Wijaya', '24-12-2020', '14-01-2021', 'pinjam'),
(6, 'Merpati Biru', '2041720043', 'Nuril Faizah ', '29-12-2020', '05-01-2021', 'pinjam'),
(7, 'Ilmu Ukur Tanah', '1831720022', 'Widad Bariroh', '29-12-2020', '05-01-2021', 'pinjam'),
(8, 'Menembus Impian', '1731720085', 'Dinda Miftah', '29-12-2020', '05-01-2021', 'pinjam'),
(9, 'Sekeping Tanda', '2031720128', 'Haris Vriza Milano', '29-12-2020', '05-01-2021', 'Kembali'),
(10, 'Beton Non-Pasir ', '1741720128', 'Putra Candra', '29-12-2020', '05-01-2021', 'pinjam'),
(11, 'Drainase Perkotaan', '1631720255', 'Bisri Musthofa', '29-12-2020', '05-01-2021', 'pinjam'),
(12, 'Pemrograman Android', '1741720128', 'Putra Candra', '29-12-2020', '05-01-2021', 'pinjam'),
(13, 'Ilmu Ukur Tanah', '1831720015', 'Tita Wijaya', '29-12-2020', '05-01-2021', 'pinjam'),
(14, 'Merpati Biru', '2031720128', 'Haris Vriza Milano', '29-12-2020', '05-01-2021', 'pinjam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama`, `level`, `foto`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'avatar5.png'),
(2, 'user', 'user', 'user', 'user', 'login.png'),
(3, 'nadia', '12345', 'nadia', 'user', 'nadia.jpg'),
(4, 'tita', 'tita', 'tita', 'admin', 'tita.jpg'),
(5, 'wijayanti', 'wijayanti', 'wijayanti', 'user', 'wijayanti.jpg'),
(6, 'yushintia', 'yushintia', 'yushintia', 'admin', 'yushintia.jpg'),
(7, 'lala', 'lala', 'lala', 'user', 'lala.jpg'),
(8, 'guest', 'guest', 'guest', 'user', 'guest.jpg'),
(9, 'heffy', 'heffy', 'heffy', 'admin', 'heffy.jpg'),
(10, 'muhammad', 'muhammad', 'muhammad', 'admin', 'muhammad.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`nim`),
  ADD UNIQUE KEY `nim` (`nim`),
  ADD KEY `nim_2` (`nim`),
  ADD KEY `nim_3` (`nim`);

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
