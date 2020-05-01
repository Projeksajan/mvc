-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Bulan Mei 2020 pada 16.49
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemesanan_makanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jenis_berita` varchar(50) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `keywords` text DEFAULT NULL,
  `status_berita` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `judul_gambar` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gambar`
--

INSERT INTO `gambar` (`id_gambar`, `id_menu`, `judul_gambar`, `gambar`, `tanggal_update`) VALUES
(3, 7, 'msmkswk', 'B612-2015-04-29-12-49-17_jiosdesired_name.jpg', '2020-04-27 11:17:37'),
(4, 7, 'apaa aja ', 'B612-2015-04-29-12-44-52_jiosdesired_name.jpg', '2020-04-27 11:19:55'),
(5, 7, 'aaaa', 'B612-2015-04-29-12-45-46_jiosdesired_name.jpg', '2020-04-27 11:20:06'),
(6, 7, 'aaaaaaa', 'IMG_20140921_190229_jiosdesired_name.jpg', '2020-04-27 11:20:30'),
(8, 11, 'aaaa', 'B612-2015-04-29-12-45-27_jiosdesired_name.jpg', '2020-04-28 02:18:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `header_transaksi`
--

CREATE TABLE `header_transaksi` (
  `id_header_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `jumlah_transaksi` int(11) NOT NULL,
  `status_bayar` varchar(20) NOT NULL,
  `jumlah_bayar` int(11) DEFAULT NULL,
  `rekening_pembayaran` varchar(255) DEFAULT NULL,
  `rekening_pelanggan` varchar(255) DEFAULT NULL,
  `bukti_bayar` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_user`, `slug_kategori`, `nama_kategori`, `urutan`, `tanggal_update`) VALUES
(3, 0, 'aaaaaccc', 'aaaaaccc', 23, '2020-04-13 16:53:59'),
(4, 0, 'minuman', 'minuman', 3, '2020-04-14 05:11:37'),
(5, 0, 'ayam-goreng', 'ayam goreng', 12, '2020-04-21 17:21:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `namaweb` varchar(255) NOT NULL,
  `tagline` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `keywords` text DEFAULT NULL,
  `metatext` text DEFAULT NULL,
  `telepon` varchar(50) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `rekening_pembayaran` varchar(255) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `namaweb`, `tagline`, `email`, `website`, `keywords`, `metatext`, `telepon`, `alamat`, `facebook`, `instagram`, `deskripsi`, `logo`, `icon`, `rekening_pembayaran`, `tanggal_update`) VALUES
(1, 'almeedqra catering', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '2020-05-01 14:22:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `kode_menu` varchar(20) NOT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `slug_menu` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `keywords` text DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `status_menu` varchar(20) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `id_user`, `id_kategori`, `kode_menu`, `nama_menu`, `slug_menu`, `keterangan`, `keywords`, `harga`, `gambar`, `status_menu`, `tanggal_post`, `tanggal_update`) VALUES
(5, 16, 5, '15236', 'nnn', 'nnn-15236', '<p>d fsv svsdvsv</p>\r\n', NULL, 121212, 'B612-2015-04-29-12-49-17_jiosdesired_name.jpg', 'Publist', '0000-00-00 00:00:00', '2020-04-25 05:40:18'),
(7, 16, 4, '13990', 'nasi kuning', 'nasi-kuning-13990', '<p>makamkamkmakakaknakan</p>\r\n', NULL, 20000, 'B612-2015-04-29-12-43-42-1_jiosdesired_name.jpg', 'Publist', '0000-00-00 00:00:00', '2020-04-24 03:25:42'),
(11, 16, 5, '15410', 'opos ek', 'opos-ek-15410', '<p>xajnxajxaijxnij</p>\r\n', NULL, 200000, 'IMG_20141125_172213_jiosdesired_name.gif', 'Publist', '0000-00-00 00:00:00', '2020-04-28 02:16:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_pelanggan` varchar(20) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `tanggal_daftar` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `akses_level` enum('admin','user') NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `email`, `akses_level`, `tanggal_update`) VALUES
(16, 'reskiyantoro', 'admin', 'f865b53623b121fd34ee5426c792e5c33af8c227', '', 'admin', '2020-04-14 12:38:22'),
(18, 'sajan', 'admin1', 'admin1', '8eb86e204a1cdb1d325be09f7e4a36fe', 'admin', '2020-04-22 14:23:19'),
(20, 'adminkeren', 'admin12', '6c7ca345f63f835cb353ff15bd6c5e052ec08e7a', 'admin1@gmail.com', 'admin', '2020-05-01 05:57:55'),
(21, 'adminkeren', 'admin1222', '6c7ca345f63f835cb353ff15bd6c5e052ec08e7a', 'admin12@gmail.com', 'admin', '2020-05-01 05:58:10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indeks untuk tabel `header_transaksi`
--
ALTER TABLE `header_transaksi`
  ADD PRIMARY KEY (`id_header_transaksi`),
  ADD UNIQUE KEY `kode_transaksi` (`kode_transaksi`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `header_transaksi`
--
ALTER TABLE `header_transaksi`
  MODIFY `id_header_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
