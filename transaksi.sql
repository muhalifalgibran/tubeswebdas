-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Des 2017 pada 15.47
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubwebdas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(22) NOT NULL,
  `tanggalMasuk` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `harga` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `status` text NOT NULL,
  `idPemesan` varchar(22) NOT NULL,
  `idHomestay` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tanggalMasuk`, `harga`, `gambar`, `status`, `idPemesan`, `idHomestay`) VALUES
('13e9-8c9a-cf4773fa8abc', '2017-12-10 09:41:10', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('20ed-ed6e-b5e477bd869a', '2017-12-10 09:17:27', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('4423-299a-199b7a48ae13', '2017-12-10 10:29:18', 122222, 'S_6867441985290.jpg', 'PENDING', 'e0eb-f0f5-ca3e74b9ac4b', 'ae6a-0966-b3a772cb86cf'),
('50b8-bc7d-b3ec7c2ba981', '2017-12-10 09:42:46', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('67fc-6c34-791c7f7fab4c', '2017-12-10 14:42:51', 90011221, 'Image_a4acbc8.png', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('6fd4-bd3a-6cb07747a737', '2017-12-10 09:41:59', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('7597-d908-5c2477ab8e6e', '2017-12-10 09:43:10', 90011221, 'Image_9306c52.jpg', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('7bda-6914-711b7a0ca8dd', '2017-12-10 09:28:58', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('a335-218b-c3a571b88942', '2017-12-10 09:34:24', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('a5f4-84f4-874f7ef285a5', '2017-12-10 09:36:12', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('aba6-590b-b29d79a9af8c', '2017-12-10 09:17:47', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('adb6-1db4-e7ef7905bbf1', '2017-12-10 09:34:38', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('c684-3d09-b26074558822', '2017-12-10 09:34:20', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('e2cc-ca2e-e13c7dfeb29d', '2017-12-10 09:34:36', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('e469-758b-c65777da95d6', '2017-12-10 09:29:27', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('fa67-1c97-a614752db040', '2017-12-10 09:35:05', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('fbe5-484a-5bc4760ea874', '2017-12-10 09:18:00', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
